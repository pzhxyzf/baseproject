package com.lee.oam.dao;

import com.lee.oam.pojo.OamIp;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

@MyBatisDao
public interface OamIpDao extends BaseDao<OamIp>{
	
	/**
	 * 通过设备ip,删除ip
	 * @param deviceIp
	 * @return
	 */
	public int deleteByDevice(String deviceIp);
}