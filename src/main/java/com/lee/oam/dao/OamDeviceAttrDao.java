package com.lee.oam.dao;

import com.lee.oam.pojo.OamDeviceAttr;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

@MyBatisDao
public interface OamDeviceAttrDao extends BaseDao<OamDeviceAttr>{
	/**
	 * 根据设备id，删除设备属性
	 * @param deviceId 设备ID
	 * @return
	 */
	public int deleteByDevice(Object deviceId);
}