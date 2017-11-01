package com.lee.oam.service;

import java.util.List;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lee.oam.dao.OamDatabaseDao;
import com.lee.oam.dao.OamDatabaseUserDao;
import com.lee.oam.pojo.OamDatabase;
import com.lee.oam.pojo.OamDatabaseUser;
import com.lee.system.util.PwdUtils;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseService;

/**
 * 数据库信息
 * @author Administrator
 *
 */
@Service
public class OamDatabaseService extends BaseService<OamDatabase	, OamDatabaseDao>{
	@Autowired 
	private OamDatabaseUserDao dbUserDao;
	
	@Transactional
	@Override
	public int insert(OamDatabase record) throws Exception {
		List<OamDatabaseUser> users = record.getUsers();
		if(CollectionUtils.isNotEmpty(users)){
			for(OamDatabaseUser user : users){
				user.setId(UuidUtil.get36UUID());
				user.setDatabaseId(record.getId());
				user.setUserpd(PwdUtils.encBase64(user.getUserpd()));
				dbUserDao.insert(user);
			}
		}
		return super.insert(record);
	}
	
	@Transactional
	@Override
	public int update(OamDatabase record) throws Exception {
		List<OamDatabaseUser> users = record.getUsers();
		if(CollectionUtils.isNotEmpty(users)){
			for(OamDatabaseUser user : users){
				user.setUserpd(PwdUtils.encBase64(user.getUserpd()));
				if(StringUtils.isBlank(user.getId())){//新增
					user.setId(UuidUtil.get36UUID());
					user.setDatabaseId(record.getId());
					dbUserDao.insert(user);
				}else{
					dbUserDao.updateByPrimaryKey(user);
				}
			}
		}
		return super.update(record);
	}
	
	@Transactional
	@Override
	public int deleteByPrimaryKey(String pk) throws Exception {
		dbUserDao.deleteByDB(pk);
		return super.deleteByPrimaryKey(pk);
	}
}
