package com.lee.system.controller;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lee.system.pojo.SysRole;
import com.lee.system.pojo.SysUserRole;
import com.lee.system.service.SysRoleService;
import com.lee.system.service.SysUserRoleService;
import com.lee.system.util.DateUtil;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 角色信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/role")
public class SysRoleController extends BaseController{
	
	@Autowired
	private SysRoleService roleService;
	@Autowired
	private SysUserRoleService userRoleService;
	@RequestMapping("/toPage")
	public ModelAndView toPage(){
		String path = getRequest().getServletContext().getContextPath();
		ModelAndView mv = new ModelAndView("system/role/roleList");
		mv.addObject("sysPath", path);
//		try {
//			mv.addObject("roles", roleService.selectAll(null));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		return mv;
	}
	 
	/**
	 * 查询角色列表
	 * @param org
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectRoleAll")
	@RequiresPermissions("sys:role:query")
	public Map<String,Object> selectRoleAll(SysRole parameter){
		try {
			List<SysRole>  list = roleService.selectAll(parameter);
			return buildDataTablesReturn(list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 查询角色列表
	 * @param org
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectUserRoleAndAllRole")
	public Map<String,Object> selectUserRoleAndAllRole(String userId){
		try {
			Map<String,Object> map = new HashMap<String, Object>();
			List<SysRole>  list = roleService.selectAll(null);
			map.put("allRole", list);
			List<SysUserRole> userRoles = userRoleService.selectAll(userId, null);
			if(CollectionUtils.isNotEmpty(userRoles)){
				Set<String> roles = new HashSet<String>();
				for(SysUserRole userRole: userRoles){
					roles.add(userRole.getRoleId());
				}
				map.put("userRole", roles);
			}
			return map;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 角色新增
	 * @param role
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/add")
	@RequiresPermissions("sys:role:add")
	public ResponseMessage add(SysRole role){
		 try {
			role.setId(UuidUtil.get36UUID());
			role.setCreateTime(DateUtil.getTime());
			roleService.insert(role);
			return okMessage("新增成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("新增失败");
		}
	}
	
	/**
	 * 角色修改
	 * @param role
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/alter")
	@RequiresPermissions("sys:role:alter")
	public ResponseMessage alter(SysRole role){
		 try {
			roleService.update(role);
			return okMessage("修改成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("修改失败");
		}
	}
	
	/**
	 * 角色删除
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/del")
	@RequiresPermissions("sys:role:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			roleService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
}
