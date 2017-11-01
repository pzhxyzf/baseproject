package com.lee.oam.service;

import java.util.List;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lee.oam.dao.OamDeviceAttrDao;
import com.lee.oam.dao.OamDeviceDao;
import com.lee.oam.dao.OamDeviceUpgradeDao;
import com.lee.oam.dao.OamDeviceUserDao;
import com.lee.oam.pojo.OamDevice;
import com.lee.oam.pojo.OamDeviceAttr;
import com.lee.oam.pojo.OamIp;
import com.lee.system.shiro.ShiroUtils;
import com.lee.system.util.DateUtil;
import com.lee.system.util.DictUtils;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseService;

/**
 * 服务器硬件基础信息表
 * @author Administrator
 *
 */
@Service
public class OamDeviceService extends BaseService<OamDevice, OamDeviceDao>{

	@Autowired
	private OamDeviceAttrDao deviceAttrDao;
	@Autowired
	private OamIpService ipService;
	@Autowired 
	private OamDeviceUserDao devUserDao;
	@Autowired
	private OamDeviceUpgradeDao upgradeDao;
	@Transactional
	@Override
	public int insert(OamDevice record) throws Exception {
		if(DictUtils.Device.SBLX_YJ.equals(record.getType())){
			//硬件设备属性
			OamDeviceAttr deviceAttr = record.getDeviceAttr();
			if(deviceAttr != null){
				deviceAttr.setId(UuidUtil.get36UUID());
				deviceAttr.setDeviceId(record.getId());
				deviceAttrDao.insert(deviceAttr);
			}
		}
		List<OamIp> ips = record.getIps();
		//新增ip信息
		if(CollectionUtils.isNotEmpty(ips)){
			OamIp query = new OamIp();
			for(OamIp ip: ips){
				if(StringUtils.isBlank(ip.getIp())){
					continue;
				}
				query.setIp(ip.getIp());
				query.setGateway(ip.getGateway());
				query.setMask(ip.getMask());
				List<OamIp> exitIps = ipService.selectAll(query);
				if(CollectionUtils.isNotEmpty(exitIps)){
					OamDevice dev = dao.selectByPrimaryKey(exitIps.get(0).getDeviceId());
					throw new RuntimeException("ip："+ip.getIp()+"已经分配给序列号为："+dev.getSerialNo()+"的设备,请重新填写IP信息");
				}
				ip.setDeviceId(record.getId());
				ip.setId(UuidUtil.get36UUID());
				ip.setCreateTime(DateUtil.getTime());
				ip.setCreateUser(ShiroUtils.getLoingUserName());
				ipService.insert(ip);
			}
		}
		return super.insert(record);
	}
	
	@Transactional
	@Override
	public int update(OamDevice record) throws Exception {
		if(DictUtils.Device.SBLX_YJ.equals(record.getType())){
			//硬件设备属性
			OamDeviceAttr deviceAttr = record.getDeviceAttr();
			if(deviceAttr != null){
				deviceAttrDao.updateByPrimaryKey(deviceAttr);
			}
		}
		List<OamIp> ips = record.getIps();
		//修改或者新增ip信息
		if(CollectionUtils.isNotEmpty(ips)){
			OamIp query = new OamIp();
			for(OamIp ip: ips){
				if(StringUtils.isBlank(ip.getIp())){
					continue;
				}
				query.setIp(ip.getIp());
				query.setGateway(ip.getGateway());
				query.setMask(ip.getMask());
				List<OamIp> exitIps = ipService.selectAll(query);
				if(StringUtils.isBlank(ip.getId())){//新增的ip
					if(CollectionUtils.isNotEmpty(exitIps)){
						OamDevice dev = dao.selectByPrimaryKey(exitIps.get(0).getDeviceId());
						throw new RuntimeException("ip："+ip.getIp()+"已经分配给序列号为："+dev.getSerialNo()+"的设备,请重新填写IP信息");
					}
					ip.setDeviceId(record.getId());
					ip.setId(UuidUtil.get36UUID());
					ip.setCreateTime(DateUtil.getTime());
					ip.setCreateUser(ShiroUtils.getLoingUserName());
					ipService.insert(ip);
				}else{//修改ip
					if(CollectionUtils.isNotEmpty(exitIps)){
						for(OamIp exitIp : exitIps){
							if(!ip.getId().equals(exitIp.getId())){
								OamDevice dev = dao.selectByPrimaryKey(exitIp.getDeviceId());
								throw new RuntimeException("ip："+ip.getIp()+"已经分配给序列号为："+dev.getSerialNo()+"的设备,请重新填写IP信息");
							}
						}
					}
					ip.setUpdateTime(DateUtil.getTime());
					ip.setUpdateUser(ShiroUtils.getLoingUserName());
					ipService.update(ip);
				}
			}
		}
		return super.update(record);
	}
	
	@Transactional
	@Override
	public int deleteByPrimaryKey(String pk) throws Exception {
		deviceAttrDao.deleteByDevice(pk);
		ipService.deleteByDevice(pk);
		devUserDao.deleteByDevice(pk);
		upgradeDao.deleteByDevice(pk);
		return super.deleteByPrimaryKey(pk);
	}
}
