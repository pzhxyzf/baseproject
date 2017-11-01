package com.lee.oam.dao;

import com.lee.oam.pojo.OamDatabaseUser;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

@MyBatisDao
public interface OamDatabaseUserDao extends BaseDao<OamDatabaseUser>{
	
	/**
	 * 根据数据id,删除其下用户
	 * @param dbId
	 * @return
	 */
	public int deleteByDB(String dbId);
}