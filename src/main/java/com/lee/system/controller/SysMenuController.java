package com.lee.system.controller;

import java.util.HashMap;
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

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.lee.system.pojo.SysButton;
import com.lee.system.pojo.SysMenu;
import com.lee.system.service.SysButtonService;
import com.lee.system.service.SysMenuService;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 菜单信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/menu")
public class SysMenuController extends BaseController{
	 
	@Autowired
	private SysMenuService menuService;
	@Autowired
	private SysButtonService buttonService;
	@RequestMapping("/toPage")
	public String toPage(){
		return "system/menu/menuList";
	}
	@RequestMapping("/toAny")
	public String toAnyPage(String path){
		logger.info("请求跳转页面：path="+path);
		return path;
	}
	/**
	 * 菜单列表
	 * @param parameter
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectAll")
	@RequiresPermissions("sys:menu:query")
	public Map<String,Object> selectAll(@RequestParam Map<String, Object> parameter){
		try {
			setParameter(parameter);
			List<SysMenu>  list = menuService.selectAllPage(parameter);
			return buildDataTablesReturn(list,parameter);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 菜单新增
	 * @param menu
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/add")
	@RequiresPermissions("sys:menu:add")
	public ResponseMessage add(SysMenu menu){
		 try {
			 menu.setId(UuidUtil.get36UUID());
			 menuService.insert(menu);
			return okMessage("新增成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("新增失败");
		}
	}
	
	/**
	 * 菜单修改
	 * @param menu
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/alter")
	@RequiresPermissions("sys:menu:alter")
	public ResponseMessage alter(SysMenu menu){
		 try {
			 menuService.update(menu);
			return okMessage("修改成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("修改失败");
		}
	}
	
	/**
	 * 菜单删除
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/del")
	@RequiresPermissions("sys:menu:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			menuService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
	
	
	/**
	 * 菜单功能查询
	 * @param parameter
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectAllButton")
	public Map<String,Object> selectAllButton(SysButton parameter){
		try {
			List<SysButton>  list = buttonService.selectAll(parameter);
			return buildDataTablesReturn(list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

	/**
	 * 新增功能
	 * @param entity
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/addButton")
	public ResponseMessage addButton(SysButton entity){
		 try {
			 entity.setId(UuidUtil.get36UUID());
			 buttonService.insert(entity);
			return okMessage("新增成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("新增失败");
		}
	}
	
	/**
	 * 修改功能
	 * @param entity
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/alterButton")
	public ResponseMessage alterButton(SysButton entity){
		 try {
			 buttonService.update(entity);
			return okMessage("修改成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("修改失败");
		}
	}
	
	/**
	 * 删除功能
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/delButton")
	public ResponseMessage delButton(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			buttonService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
	/**
	 * 菜单和权限查询
	 * @param parameter
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping(value="queryMenuTree")
	public ModelAndView queryMenuTree(@RequestParam Map<String, Object> parameter) throws Exception{
		if(parameter.get("masteruId") == null){
			throw new Exception("请选择角色");
		}
		ModelAndView mv = new ModelAndView("system/menu/tree");
		List<HashMap<String, Object>> tree = menuService.queryMenuTree(parameter);
		mv.addObject("ztree",JSONObject.toJSONString(tree));
		return mv;
	}
	
	/**
	 * 菜单和权限分配
	 * @param parameter
	 * @return
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping(value="allotRoleMenu")
	public ResponseMessage allotRoleMenu(String jsonNode,String roleId) throws Exception{
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> nodes = (List<Map<String, Object>>) JSONArray.parse(jsonNode);
		if(CollectionUtils.isEmpty(nodes)){
			return errorMessage("你没有选择任何权限");
		}
		if(StringUtils.isBlank(roleId)){
			return errorMessage("你没有需要分配的角色");
		}
		menuService.allotRoleMenu(nodes,roleId);
		return okMessage("分配成功!");
	}
}
