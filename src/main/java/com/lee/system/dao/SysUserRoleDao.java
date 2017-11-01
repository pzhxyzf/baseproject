package com.lee.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lee.system.pojo.SysUserRole;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

@MyBatisDao
public interface SysUserRoleDao extends BaseDao<SysUserRole>{
	List<SysUserRole> selectAll(@Param("userId") String userId, @Param("roleId") String roleId);
	int deleteByUserId(String userId);
}