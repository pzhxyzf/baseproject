package com.lee.oam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lee.oam.dao.OamAppDao;
import com.lee.oam.dao.OamAppUserDao;
import com.lee.oam.pojo.OamApp;
import com.lee.system.util.base.BaseService;

/**
 * 应用信息
 * @author Administrator
 *
 */
@Service
public class OamAppService extends BaseService<OamApp, OamAppDao>{
	
	@Autowired
	private OamAppUserDao userDao;
	
	@Transactional
	@Override
	public int deleteByPrimaryKey(String pk) throws Exception {
		userDao.deleteByApp(pk);
		return super.deleteByPrimaryKey(pk);
	}
}
