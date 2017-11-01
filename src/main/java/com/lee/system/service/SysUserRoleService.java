package com.lee.system.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.lee.system.dao.SysUserRoleDao;
import com.lee.system.pojo.SysUserRole;
import com.lee.system.util.base.BaseService;

/**
 * 用户角色信息
 * @author Administrator
 *
 */
@Service
public class SysUserRoleService extends BaseService<SysUserRole,SysUserRoleDao>{
	
	public List<SysUserRole> selectAll(@Param("userId") String userId, @Param("roleId") String roleId){
		return dao.selectAll(userId, roleId);
	}
}