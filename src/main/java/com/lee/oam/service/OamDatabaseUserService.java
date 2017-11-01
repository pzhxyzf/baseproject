package com.lee.oam.service;

import org.springframework.stereotype.Service;

import com.lee.oam.dao.OamDatabaseUserDao;
import com.lee.oam.pojo.OamDatabaseUser;
import com.lee.system.util.base.BaseService;

/**
 * 数据库用户信息
 * @author Administrator
 *
 */
@Service
public class OamDatabaseUserService extends BaseService<OamDatabaseUser	, OamDatabaseUserDao>{
}
