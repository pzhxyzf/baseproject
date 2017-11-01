package com.lee.system.service;

import java.util.HashMap;
import java.util.List;
import java.util.Set;

import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lee.system.dao.SysButtonDao;
import com.lee.system.dao.SysUserDao;
import com.lee.system.dao.SysUserRoleDao;
import com.lee.system.pojo.SysUser;
import com.lee.system.pojo.SysUserRole;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseService;

/**
 * 用户信息
 * @author Administrator
 *
 */
@Service
public class SysUserService extends BaseService<SysUser,SysUserDao>{
	
	@Autowired
	private SysButtonDao buttonDao;
	@Autowired
	private SysUserRoleDao userRoleDao;
	
	/**
	 * 根据登录名称查询用户
	 * @param loginName
	 * @return
	 */
	public SysUser queryByLoginName(String loginName){
		SysUser query = new SysUser();
		query.setLoginName(loginName);
		List<SysUser> users = dao.selectAll(query);
		if(CollectionUtils.isNotEmpty(users)){
			return users.get(0);
		}
		return null;
	}
	
	/**
	 * 根据用户ID查询用户
	 * @param id
	 * @return
	 */
	public SysUser queryById(String id){
		SysUser query = new SysUser();
		query.setId(id);
		List<SysUser> users = dao.selectAll(query);
		if(CollectionUtils.isNotEmpty(users)){
			return users.get(0);
		}
		return null;
	}
	
	/**
	 * 根据角色id或者用户id查询功能权限
	 * @param map
	 * @return
	 */
	public Set<String> selectScript(HashMap<String, Object> map){
		return buttonDao.selectScript(map);
	}
	 
	/**
	 * 查询用户角色信息
	 * @param userId
	 * @param roleId
	 * @return
	 */
	public List<SysUserRole> selectAll(String userId, String roleId){
		return userRoleDao.selectAll(userId, roleId);
	}
	
	/**
	 * 更新用户密码
	 * @param parameter
	 * @return
	 */
	public int updateLoginPassword(String id,String loginPassword){
		return dao.updateLoginPassword(id, loginPassword);
	}
	
	/**
	 * 用户新增
	 */
	@Transactional
	@Override
	public int insert(SysUser user) throws Exception {
		if(CollectionUtils.isNotEmpty(user.getRoles())){
			for(String roleId : user.getRoles()){
				SysUserRole ur = new SysUserRole();
				ur.setId(UuidUtil.get36UUID());
				ur.setRoleId(roleId);
				ur.setUserId(user.getId());
				userRoleDao.insert(ur);
			}
		}
		return super.insert(user);
	}
	/**
	 * 修改用户
	 */
	@Transactional
	@Override
	public int update(SysUser user) throws Exception {
		 if(CollectionUtils.isNotEmpty(user.getRoles())){
			 userRoleDao.deleteByUserId(user.getId());
			 for(String roleId : user.getRoles()){
					SysUserRole ur = new SysUserRole();
					ur.setId(UuidUtil.get36UUID());
					ur.setRoleId(roleId);
					ur.setUserId(user.getId());
					userRoleDao.insert(ur);
			 }
		 }
		return super.update(user);
	}
}