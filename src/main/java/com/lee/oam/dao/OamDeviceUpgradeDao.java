package com.lee.oam.dao;

import com.lee.oam.pojo.OamDeviceUpgrade;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

@MyBatisDao
public interface OamDeviceUpgradeDao extends BaseDao<OamDeviceUpgrade>{

	/**根据设备id，删除设备升级信息*/
	void deleteByDevice(String deviceId);
}