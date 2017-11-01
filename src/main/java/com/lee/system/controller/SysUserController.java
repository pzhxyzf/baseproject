package com.lee.system.controller;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lee.system.pojo.SysUser;
import com.lee.system.service.SysDepartmentService;
import com.lee.system.service.SysDictEntryService;
import com.lee.system.service.SysUserService;
import com.lee.system.shiro.ShiroUtils;
import com.lee.system.util.DateUtil;
import com.lee.system.util.DictUtils;
import com.lee.system.util.PwdUtils;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 用户信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/user")
public class SysUserController extends BaseController{
	
	final private String initPassword = "123456";
	
	@Autowired
	private SysUserService userService;
	@Autowired
	private SysDepartmentService deptService;
	@Autowired
	private SysDictEntryService dictService;
	
	@RequestMapping("/toPage")
	public String toPage(){
	   return "system/user/userList";
	}
	 
	/**
	 * 查询列表
	 * @param org
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectAll")
	public Map<String,Object> selectAll(@RequestParam Map<String, Object> parameter){
		try {
			setParameter(parameter);
			List<SysUser>  list = userService.selectAllPage(parameter);
			if(CollectionUtils.isNotEmpty(list)){
				for(SysUser user : list){
					if(StringUtils.isNotBlank(user.getDeptId()))
						user.setDeptName(deptService.selectByPrimaryKey(user.getDeptId()).getDeptName());
					if(StringUtils.isNotBlank(user.getEnable())){
						user.setEnableTitle(dictService.getDictName(DictUtils.Sys.ENABLE, user.getEnable()));
					}
					if(StringUtils.isNotBlank(user.getSex())){
						user.setSexTitle(dictService.getDictName(DictUtils.Sys.SEX, user.getSex()));

					}
				}
			}
			return buildDataTablesReturn(list,parameter);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 新增
	 * @param role
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/add")
	@RequiresPermissions("sys:user:add")
	public ResponseMessage add(SysUser user){
		 try {
			 if(CollectionUtils.isEmpty(user.getRoles())){
				 return errorMessage("请选择角色!");
			 }
			 user.setId(UuidUtil.get36UUID());
			 user.setLoginPassword(PwdUtils.shiroMD5(initPassword, user.getId()));
			 user.setCreateTime(DateUtil.getTime());
			userService.insert(user);
			return okMessage("新增成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("新增失败");
		}
	}
	
	/**
	 * 修改
	 * @param role
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/alter")
	@RequiresPermissions("sys:user:alter")
	public ResponseMessage alter(SysUser entity){
		 try {
			 if(CollectionUtils.isEmpty(entity.getRoles())){
				 return errorMessage("请选择角色!");
			 }
			userService.update(entity);
			return okMessage("修改成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("修改失败");
		}
	}
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/del")
	@RequiresPermissions("sys:user:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			userService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
	
	/**
	 * 个人信息页面
	 * @return
	 */
	@RequestMapping(value="toPersonalInfo")
	public ModelAndView toPersonalInfo(){
		ModelAndView mv = new ModelAndView("system/user/personalInfo");
		try {
			SysUser user = userService.selectByPrimaryKey(ShiroUtils.getLoingUserInfo().getId());
			if(StringUtils.isNotBlank(user.getDeptId()))
			user.setDeptName(deptService.selectByPrimaryKey(user.getDeptId()).getDeptName());
			mv.addObject("user", user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	/**
	 * 修改个人信息
	 * @param role
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/alterPersonal")
	public ResponseMessage alterPersonal(SysUser entity){
		 try {
			 if(StringUtils.isBlank(entity.getLoginName())){
				 return errorMessage("请填写登录账户");
			 }
			userService.update(entity);
			return okMessage("修改成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("修改失败");
		}
	}
	
	/**
	 * 修改个人密码
	 * @param id
	 * @param newPassword
	 * @param oldPassword
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value="/alterPassword")
	public ResponseMessage alterPassword(String id,String newPassword,String oldPassword) throws Exception{
		if(StringUtils.isBlank(oldPassword)){
			return errorMessage("请填写原密码");
		}
		if(StringUtils.isBlank(newPassword)){
			return errorMessage("请填写新密码");
		}
		if(oldPassword.equals(newPassword)){
			return errorMessage("填写的原密码和新密码相同");
		}
		oldPassword = PwdUtils.shiroMD5(oldPassword, id); 
		SysUser user = userService.selectByPrimaryKey(id);
		if(!oldPassword.equals(user.getLoginPassword())){
			return errorMessage("原密码错误");
		}
		userService.updateLoginPassword(id, PwdUtils.shiroMD5(newPassword, id));
		return okMessage("修改成功");
	}
	
	/**
	 * 密码重置
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value="/resetPassword")
	@RequiresPermissions("sys:user:resetpwd")
	public ResponseMessage resetPassword(String id) throws Exception{
		if(StringUtils.isBlank(id)){
			return errorMessage("选择需要重置的用户");
		}
		userService.updateLoginPassword(id, PwdUtils.shiroMD5(initPassword, id));
		return okMessage("重置成功");
	}
}
