package com.lee.oam.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections4.CollectionUtils;
import org.springframework.stereotype.Service;

import com.lee.oam.dao.OamDeviceAttrDao;
import com.lee.oam.pojo.OamDeviceAttr;
import com.lee.system.util.base.BaseService;

/**
 * 服务器硬件基础信息表
 * @author Administrator
 *
 */
@Service
public class OamDeviceAttrService extends BaseService<OamDeviceAttr, OamDeviceAttrDao>{

	 public OamDeviceAttr findByDevice(String deviceId){
		 Map<String, Object> query = new HashMap<>();
		 query.put("deviceId", deviceId);
		 List<OamDeviceAttr> list = dao.selectAll(query);
		 if(CollectionUtils.isEmpty(list)){
			 return null;
		 }
		 return list.get(0);
	 }
}
