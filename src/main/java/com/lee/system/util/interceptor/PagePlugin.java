package com.lee.system.util.interceptor;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.xml.bind.PropertyException;

import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.executor.ErrorContext;
import org.apache.ibatis.executor.ExecutorException;
import org.apache.ibatis.executor.statement.BaseStatementHandler;
import org.apache.ibatis.executor.statement.RoutingStatementHandler;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.mapping.ParameterMode;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.scripting.xmltags.ForEachSqlNode;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.type.TypeHandler;
import org.apache.ibatis.type.TypeHandlerRegistry;

import com.lee.system.util.ReflectHelper;
import com.lee.system.util.Tools;

/**
 * 
* 类名称：PagePlugin.java
* 类描述： 
* @author FH
* 作者单位： 
* 联系方式：qq313596790
* 创建时间：2014年7月1日
* @version 1.0
 */
@Intercepts({@Signature(type=StatementHandler.class,method="prepare",args={Connection.class,Integer.class})})
public class PagePlugin implements Interceptor {

	private  String dialect = "";	//数据库方言
	private  String pageSqlId = ""; //mapper.xml中需要拦截的ID(正则匹配)
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Object intercept(Invocation ivk) throws Throwable {
		// TODO Auto-generated method stub
		if(ivk.getTarget() instanceof RoutingStatementHandler){
			RoutingStatementHandler statementHandler = (RoutingStatementHandler)ivk.getTarget();
			BaseStatementHandler delegate = (BaseStatementHandler) ReflectHelper.getValueByFieldName(statementHandler, "delegate");
			MappedStatement mappedStatement = (MappedStatement) ReflectHelper.getValueByFieldName(delegate, "mappedStatement");
			
			if(mappedStatement.getId().matches(pageSqlId)){ //拦截需要分页的SQL
				BoundSql boundSql = delegate.getBoundSql();
				Object parameterObject = boundSql.getParameterObject();//分页SQL<select>中parameterType属性对应的实体参数，即Mapper接口中执行分页方法的参数,该参数不得为空
				if(parameterObject==null){
					throw new NullPointerException("parameterObject尚未实例化！");
				}else{
					Connection connection = (Connection) ivk.getArgs()[0];
					String sql = boundSql.getSql();
					 int index = sql.indexOf("from");  
					String countSql =  "select count(1) " + sql.substring(index);  //记录统计 == oracle 加 as 报错(SQL command not properly ended)
					PreparedStatement countStmt = connection.prepareStatement(countSql);
					BoundSql countBS = new BoundSql(mappedStatement.getConfiguration(),countSql,boundSql.getParameterMappings(),parameterObject);
					Field metaParamsField = ReflectHelper.getFieldByFieldName(boundSql, "metaParameters");
		            if (metaParamsField != null) {
		                MetaObject mo = (MetaObject) ReflectHelper.getValueByFieldName(boundSql, "metaParameters");
		                ReflectHelper.setValueByFieldName(countBS, "metaParameters", mo);
		                setParameters(countStmt,mappedStatement,countBS,parameterObject, mo);
		            }
					ResultSet rs = countStmt.executeQuery();
					int count = 0;
					if (rs.next()) {
						count = rs.getInt(1);
					}
					rs.close();
					countStmt.close();
					Map<String, Object> page = null;
					String pageSql = "";
					if(parameterObject instanceof Map){	//参数就是Page实体
						 page = (Map) parameterObject;
						 page.put("datatable_total", count);
						 //page.setEntityOrField(true);	 
						// page.setTotalResult(count);
						 pageSql = generatePageSql(sql,page);
					}else{	//参数为某个实体，该实体拥有Page属性
					}
					ReflectHelper.setValueByFieldName(boundSql, "sql", pageSql); //将分页sql语句反射回BoundSql.
				}
			}
		}
		return ivk.proceed();
	}

	
	/**
	 * 对SQL参数(?)设值,参考org.apache.ibatis.executor.parameter.DefaultParameterHandler
	 * @param ps
	 * @param mappedStatement
	 * @param boundSql
	 * @param parameterObject
	 * @throws SQLException
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	private void setParameters(PreparedStatement ps,MappedStatement mappedStatement,BoundSql boundSql,Object parameterObject,MetaObject mo) throws SQLException {
		ErrorContext.instance().activity("setting parameters").object(mappedStatement.getParameterMap().getId());
		List<ParameterMapping> parameterMappings = boundSql.getParameterMappings();
		if (parameterMappings != null) {
			Configuration configuration = mappedStatement.getConfiguration();
			TypeHandlerRegistry typeHandlerRegistry = configuration.getTypeHandlerRegistry();
			MetaObject metaObject = parameterObject == null ? null: configuration.newMetaObject(parameterObject);
			for (int i = 0; i < parameterMappings.size(); i++) {
				ParameterMapping parameterMapping = parameterMappings.get(i);
				if (parameterMapping.getMode() != ParameterMode.OUT) {
					Object value;
					String propertyName = parameterMapping.getProperty();
					if (parameterObject == null) {
						value = null;
					} else if (typeHandlerRegistry.hasTypeHandler(parameterObject.getClass())) {
						value = parameterObject;
					} else if (boundSql.hasAdditionalParameter(propertyName)) {
						value = boundSql.getAdditionalParameter(propertyName);
					} else if (propertyName.startsWith(ForEachSqlNode.ITEM_PREFIX)) {
						value = mo.getValue(propertyName);
					} else {
						value = metaObject == null ? null : metaObject.getValue(propertyName);
					}
					TypeHandler typeHandler = parameterMapping.getTypeHandler();
					if (typeHandler == null) {
						throw new ExecutorException("There was no TypeHandler found for parameter "+ propertyName + " of statement "+ mappedStatement.getId());
					}
					typeHandler.setParameter(ps, i + 1, value, parameterMapping.getJdbcType());
				}
			}
		}
	}
	
	/**
	 * 根据数据库方言，生成特定的分页sql
	 * @param sql
	 * @param page
	 * @return
	 */
	private String generatePageSql(String sql,Map<String, Object> page){
		if(page!=null && StringUtils.isNotBlank(dialect)){
			StringBuffer pageSql = new StringBuffer();
			if("mysql".equals(dialect)){
				pageSql.append(sql);
				pageSql.append(" limit "+page.get("datatable_offset")+","+page.get("datatable_limit"));
			}else if("oracle".equals(dialect)){
				pageSql.append("select * from (select tmp_tb.*,ROWNUM row_id from (");
				pageSql.append(sql);
				//pageSql.append(") as tmp_tb where ROWNUM<=");
				pageSql.append(") tmp_tb where ROWNUM<=");
				pageSql.append(Integer.valueOf(page.get("datatable_offset").toString())+Integer.valueOf(page.get("datatable_limit").toString()));
				pageSql.append(") where row_id>");
				pageSql.append(page.get("datatable_offset"));
			}
			return pageSql.toString();
		}else{
			return sql;
		}
	}
 
	
	public Object plugin(Object arg0) {
		// TODO Auto-generated method stub
		return Plugin.wrap(arg0, this);
	}

	public void setProperties(Properties p) {
		dialect = p.getProperty("dialect");
		if (Tools.isEmpty(dialect)) {
			try {
				throw new PropertyException("dialect property is not found!");
			} catch (PropertyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		pageSqlId = p.getProperty("pageSqlId");
		if (Tools.isEmpty(pageSqlId)) {
			try {
				throw new PropertyException("pageSqlId property is not found!");
			} catch (PropertyException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}


	public String getDialect() {
		return dialect;
	}


	public void setDialect(String dialect) {
		this.dialect = dialect;
	}


	public String getPageSqlId() {
		return pageSqlId;
	}


	public void setPageSqlId(String pageSqlId) {
		this.pageSqlId = pageSqlId;
	}
	
	
}
