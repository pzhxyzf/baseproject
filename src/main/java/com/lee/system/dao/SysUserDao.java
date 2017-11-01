package com.lee.system.dao;

import org.apache.ibatis.annotations.Param;

import com.lee.system.pojo.SysUser;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

@MyBatisDao
public interface SysUserDao extends BaseDao<SysUser>{
	/**
	 * 更新用户密码
	 * @param parameter
	 * @return
	 */
	public int updateLoginPassword(@Param("id") String id,@Param("loginPassword") String loginPassword);
}