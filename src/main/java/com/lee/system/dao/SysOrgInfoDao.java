package com.lee.system.dao;

import java.util.List;

import com.lee.system.pojo.SysOrgInfo;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

/**
 * 机构信息
 * @author Administrator
 *
 */
@MyBatisDao
public interface SysOrgInfoDao extends BaseDao<SysOrgInfo>{
	
	/**
	 * 查询机构树
	 * @param entity
	 * @return
	 */
	public List<SysOrgInfo> loadOrgTree(SysOrgInfo entity);
}