package com.lee.system.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lee.system.pojo.SysMenu;
import com.lee.system.pojo.SysUser;
import com.lee.system.service.SysMenuService;
import com.lee.system.shiro.ShiroUtils;
import com.lee.system.util.base.BaseController;

/**
 * 登录信息信息
 * @author Administrator
 *
 */
@Controller
public class SysLoginController  extends BaseController{
	
	@Autowired
	private SysMenuService menuService;
	
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping(value="/login")
	public String index(){
		return "login";
	}
	
	/**
	 * 退出登录
	 * @return
	 */
	@RequestMapping(value="/logout")
	public String logout(){
		Subject subject = SecurityUtils.getSubject(); 
		subject.logout();
		return "logout";
	}
	/**
	 * 登录
	 */
	@RequestMapping(value = "/sys/login", method = RequestMethod.POST)
	public ModelAndView login(String loginName, String loginPassword, String captcha)throws IOException {
		String error = null;  	
		Subject subject = SecurityUtils.getSubject();  
		UsernamePasswordToken token = new UsernamePasswordToken(loginName, loginPassword);  
		try {  
            subject.login(token);  
        } catch (UnknownAccountException e) {  
            error = "用户名或者密码错误";  
        } catch (IncorrectCredentialsException e) {  
            error = "用户名或者密码错误";  
        } catch (AuthenticationException e) {  
            //其他错误，比如锁定，如果想单独处理请单独catch处理  
            error = "其他错误：" + e.getMessage();  
        }  
		ModelAndView mv = new ModelAndView();
        if(error != null) {//出错了，返回登录页面  
            mv.addObject("error",error);
            mv.setViewName("login");
        } else {//登录成功  
        	queryMenu(mv);
        }  
        return mv;
	}
	
	/**
	 * 单点登录
	 */
	@RequestMapping(value = "/casLogin", method = RequestMethod.GET)
	public ModelAndView login()throws IOException {
		ModelAndView mv = new ModelAndView();
		queryMenu(mv);
        return mv;
	}
	
	/**
	 * 根据用户信息查询菜单
	 * @param mv
	 */
	private void queryMenu(ModelAndView mv){
		SysUser user = ShiroUtils.getLoingUserInfo();
    	Map<String, Object> queryMap = new HashMap<>();
    	queryMap.put("userId", user.getId());
    	queryMap.put("roleIds", user.getRoles());
    	List<SysMenu> menus = menuService.selectMenuByUoR(queryMap);
    	if(CollectionUtils.isEmpty(menus)){
    		 mv.addObject("error","没有分配菜单访问权限");
             mv.setViewName("login");
             return;
    	}
    	List<SysMenu> parents = new ArrayList<>();
    	for(SysMenu m:menus){
    		if(StringUtils.isBlank(m.getParentId())){
    			parents.add(m);
    		}
    	}
    	setNexts(parents, menus);
    	mv.addObject("menu",parents);
    	mv.addObject("user",user);
    	mv.setViewName("index");
	}
	
	private void setNexts(List<SysMenu> nexts,List<SysMenu> menus){
		for(SysMenu parent:nexts){
			setNexts(parent, menus);
			if(parent.getNexts().size() > 0){
				setNexts(parent.getNexts(), menus);
			}
		}
	}
	private void setNexts(SysMenu parent,List<SysMenu> menus){
		for(SysMenu m:menus){
			if(parent.getId().equals(m.getParentId())){
				parent.getNexts().add(m);
			}
		}
	}
	
}
