package com.lee.oam.service;

import org.springframework.stereotype.Service;

import com.lee.oam.dao.OamIpDao;
import com.lee.oam.pojo.OamIp;
import com.lee.system.util.base.BaseService;

/**
 * ip信息服务
 * @author Administrator
 *
 */
@Service
public class OamIpService extends BaseService<OamIp, OamIpDao>{

	/**
	 * 通过设备ip,删除ip
	 * @param deviceIp
	 * @return
	 */
	public int deleteByDevice(String deviceIp){
		return dao.deleteByDevice(deviceIp);
	}
}
