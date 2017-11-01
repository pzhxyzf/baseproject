package com.lee.system.shiro;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.lee.system.pojo.SysUser;
import com.lee.system.pojo.SysUserRole;
import com.lee.system.service.SysUserService;
import com.lee.system.util.DictUtils;
import com.lee.system.util.PwdUtils;

/**
 * 用户认证
 * @author Administrator
 *
 */
public class UserRealm  extends AuthorizingRealm{

	@Autowired
	private SysUserService userService;
	
	 // 用于授权  
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		SysUser user = (SysUser)principals.getPrimaryPrincipal();
		SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
		authorizationInfo.setRoles(user.getRoles());
		authorizationInfo.setStringPermissions(user.getPermissions());
		return authorizationInfo;
	}

	// 用于认证  
    //realm的认证方法，从数据库查询用户信息 
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
	    String loginName = (String)token.getPrincipal();  
	    String password = new String((char[]) token.getCredentials());
        SysUser user = userService.queryByLoginName(loginName); 
        if(user == null) {  
            throw new UnknownAccountException("账号不正确");//没找到帐号  
        }  
        if(DictUtils.Sys.ENABLE_NO.equals(user.getEnable())) {  
            throw new LockedAccountException("账号被锁定"); //帐号锁定  
        }  
        String md5Password = PwdUtils.shiroMD5(password, user.getId());
        //密码错误
        if(!md5Password.equals(user.getLoginPassword())) {
            throw new IncorrectCredentialsException("密码不正确");
        }
        //将用户角色添加到principals中
        List<SysUserRole> userRoles  = userService.selectAll(user.getId(),null);
		if(CollectionUtils.isEmpty(userRoles)){
			throw new AuthenticationException("用户没有分配角色!");
		}
		Set<String> roles = new HashSet<>();
		for(SysUserRole userRole : userRoles){
			roles.add(userRole.getRoleId());
		}
		user.setRoles(roles);
		//将用户权限添加到principals中
		HashMap<String, Object> map = new HashMap<>();
		map.put("userId", user.getId());
		map.put("roleIds", roles);
		Set<String> permissions = userService.selectScript(map);
		/*if(CollectionUtils.isEmpty(permissions)){
			throw new AuthenticationException("用户没有分配权限!");
		}*/
		user.setPermissions(permissions);
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user, password, this.getName());
        return authenticationInfo;
	}

	//清除缓存  
    public void clearCached() {  
        PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();  
        super.clearCache(principals);  
    }  
}
