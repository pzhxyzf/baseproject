package com.lee.system.dao;

import java.util.List;

import com.lee.system.pojo.SysMenu;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

@MyBatisDao
public interface SysMenuDao extends BaseDao<SysMenu>{
	
	/**
	 * 根据用户角色或用户id查询菜单
	 * @param parameter
	 * @return
	 */
	public List<SysMenu> selectMenuByUoR(Object parameter);
}