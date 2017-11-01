package com.lee.system.shiro;

import org.apache.shiro.SecurityUtils;

import com.lee.system.pojo.SysUser;

/**
 * shrio权限工具类
 * @author Administrator
 *
 */
public class ShiroUtils {

	/**
	 * 获取登录用户信息
	 * @return
	 */
	public static SysUser getLoingUserInfo(){
		//return (SysUser)SecurityUtils.getSubject().getPrincipals().getPrimaryPrincipal();
		//单点登录方式(MyCasRealm认证的时候赋值)
		return (SysUser)SecurityUtils.getSubject().getPrincipals().asList().get(0);
	}
	
	/**
	 * 获取登录用户ID
	 * @return
	 */
	public static String getLoingUserId(){
		return  getLoingUserInfo().getId();
	}
	/**
	 * 获取登录用户名称
	 * @return
	 */
	public static String getLoingUserName(){
		return getLoingUserInfo().getRealName();
	}
}
