package com.lee.system.util.base;

import java.util.List;


/**
 * mapper机构映射接口
 * @author Administrator
 *
 * @param <T>
 */
public interface BaseDao<T> {

	
	/**
	 * 获取单条数据
	 * @param entity
	 * @return
	 */
	public T selectOne(Object entity);
	
	/**
	 * 获取单条数据 主键
	 * @param entity
	 * @return
	 */
	public T selectByPrimaryKey(String id);
	
	/**
	 * 查询数据列表
	 * @param entity
	 * @return
	 */
	public List<T> selectAll(Object entity);
	
	/**
	 * 分页查询列表
	 * @param entity
	 * @return
	 */
	public List<T> selectAllPage(Object entity);
	
	
	/**
	 * 插入数据
	 * @param entity
	 * @return
	 */
	public int insert(T entity);
	
	/**
	 * 选择性插入数据
	 * @param entity
	 * @return
	 */
	public int insertSelective(T entity);
	
	/**
	 * 通过主键，选择性更新
	 * @param entity
	 * @return
	 */
	public int updateByPrimaryKeySelective(T entity);
	
	/**
	 * 通过主键更新数据
	 * @param entity
	 * @return
	 */
	public int updateByPrimaryKey(T entity);
	/**
	 * 删除数据
	 * @param entity
	 * @return
	 */
	public int delete(Object entity);
	
	/**
	 * 删除数据
	 * @param id 主键
	 * @return
	 */
	public int deleteByPrimaryKey(String id);
}
