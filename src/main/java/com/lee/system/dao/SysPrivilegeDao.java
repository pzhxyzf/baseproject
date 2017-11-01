package com.lee.system.dao;

import com.lee.system.pojo.SysPrivilege;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

@MyBatisDao
public interface SysPrivilegeDao extends BaseDao<SysPrivilege>{
	/**
	 * 根据条件删除权限
	 * @param parameter
	 * @return
	 */
	public int deleteAll(Object parameter);
}