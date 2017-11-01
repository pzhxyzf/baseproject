package com.lee.oam.dao;

import com.lee.oam.pojo.OamAppUser;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

@MyBatisDao
public interface OamAppUserDao extends BaseDao<OamAppUser>{
	
	int deleteByApp(String appId);
}