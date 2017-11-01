package com.lee.system.util.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public abstract class BaseService<T,Dao extends BaseDao<T>> {

	 @Autowired
	 protected Dao dao;
	 
	   /**
	    * 删除数据
	    * @param parameter 删除条件参数
	    * @return
	    * @throws Exception
	    */
	   public int delete(Object parameter) throws Exception{
	    	
		   return dao.delete(parameter);
	    }
	   
	   /**
	    * 通过主键删除数据
	    * @param pk 主键
	    * @return
	    * @throws Exception
	    */
	   public int deleteByPrimaryKey(String pk) throws Exception{
	    	
		   return dao.deleteByPrimaryKey(pk);
	    } 
	   
	   /**
	    * 新增数据
	    * @param record
	    * @return
	    * @throws Exception
	    */
	   public  int insert(T record) throws Exception{
		   return dao.insert(record);
	   }

	   /**
	    * 选择性新增数据
	    * @param record
	    * @return
	    * @throws Exception
	    */
	   public  int insertSelective(T record) throws Exception{
		   return dao.insertSelective(record);
	   }

	   /**
	    * 查询对象
	    * @param parameter 查询条件
	    * @return
	    * @throws Exception
	    */
	   public   T selectOne(Object parameter) throws Exception{
		   return dao.selectOne(parameter);
	   }
	   
	   /**
	    * 通过主键查询对象
	    * @param pk 主键
	    * @return
	    * @throws Exception
	    */
	   public   T selectByPrimaryKey(String pk) throws Exception{
		   return dao.selectByPrimaryKey(pk);
	   }
	   
	   /**
	    * 选择性更新数据
	    * @param record
	    * @return
	    * @throws Exception
	    */
	   public  int updateSelective(T record) throws Exception{
		   return dao.updateByPrimaryKeySelective(record);
	   }

	   /**
	    * 更新数据
	    * @param record
	    * @return
	    * @throws Exception
	    */
	   public  int update(T record) throws Exception{
		   return dao.updateByPrimaryKey(record);
	   }
	   
	   /**
	    * 查找对象集合(不分页查询)
	    * @param parameter 查询条件
	    * @return
	    * @throws Exception
	    */
	   public List<T> selectAll(Object parameter) throws Exception{
		   return dao.selectAll(parameter);
	   }
	  
	   /**
	    * 查找对象集合(分页查询)
	    * @param parameter 查询条件
	    * @return
	    * @throws Exception
	    */
	   public List<T> selectAllPage(Object parameter) throws Exception{
		   return dao.selectAllPage(parameter);
	   }
}
