package com.lee.oam.dao;

import com.lee.oam.pojo.OamDeviceUser;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

@MyBatisDao
public interface OamDeviceUserDao extends BaseDao<OamDeviceUser>{
	
	/**
	 * 根据设备id，删除用户
	 * @param deviceId
	 * @return
	 */
	public int deleteByDevice(String deviceId);
}