package com.lee.system.dao;

import java.util.HashMap;
import java.util.Set;

import com.lee.system.pojo.SysButton;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

@MyBatisDao
public interface SysButtonDao extends BaseDao<SysButton>{
	/**
	 * 根据角色id或者用户id查询功能权限
	 * @param map
	 * @return
	 */
	public Set<String> selectScript(HashMap<String, Object> map);
}