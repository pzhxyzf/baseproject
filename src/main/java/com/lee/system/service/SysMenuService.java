package com.lee.system.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lee.system.dao.SysMenuDao;
import com.lee.system.dao.SysPrivilegeDao;
import com.lee.system.pojo.SysButton;
import com.lee.system.pojo.SysMenu;
import com.lee.system.pojo.SysPrivilege;
import com.lee.system.util.DictUtils;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseService;

/**
 * 菜单信息
 * @author Administrator
 *
 */
@Service
public class SysMenuService extends BaseService<SysMenu,SysMenuDao>{

	@Autowired
	private SysButtonService buttonService;
	@Autowired
	private SysPrivilegeDao privilegeDao;
	
	/**
	 * 根据用户角色或用户id查询菜单
	 * @param parameter
	 * @return
	 */
	public List<SysMenu> selectMenuByUoR(Object parameter){
		return dao.selectMenuByUoR(parameter);
	}
	/**
	 * 查询菜单
	 * @param parameter
	 * @return
	 * @throws Exception
	 */
	public List<HashMap<String, Object>> queryMenuTree(Map<String, Object> parameter) throws Exception {
		List<SysMenu> menus = this.selectAll(null);
		List<HashMap<String, Object>> list  = new ArrayList<>();
		List<SysPrivilege> privileges = privilegeDao.selectAll(parameter);
		Set<String> privilegeSet = new HashSet<>();
		for (SysPrivilege privilege : privileges) {
			privilegeSet.add(privilege.getButtonId());
		}
		for (SysMenu menu : menus) {
			HashMap<String, Object> map = new HashMap<>();
			map.put("id", menu.getId());
			map.put("pId", menu.getParentId());
			map.put("name", menu.getMenuName());
			map.put("isParent", DictUtils.Sys.ENABLE_YES.equals(menu.getIsparent())?true:false);
			//map.put("iconSkin", menu.getMenuIcon()+"  ");
			map.put("type", "menu");
			map.put("open", true);
			if(privilegeSet.contains(menu.getId())){
				map.put("checked", true);
				map.put("allot", true);
			}
			list.add(map);
		}
		List<SysButton> buttons = buttonService.selectAll(null);
		for (SysButton sysButton : buttons) {
			HashMap<String, Object> map = new HashMap<>();
			map.put("id", sysButton.getId());
			map.put("pId",sysButton.getMenuId());
			map.put("name",sysButton.getBtnName());
			map.put("isParent", false);
			map.put("type", "button");
			if(privilegeSet.contains(sysButton.getId())){
				map.put("checked", true);
				map.put("allot", true);
			}
			list.add(map);
		}
		return list;
	}
	/**
	 * 角色权限分配
	 * @param parameter
	 * @param roleId
	 */
	@Transactional(rollbackFor=Exception.class)
	public void allotRoleMenu(List<Map<String, Object>> parameter,String roleId){
		Map<String, Object> deleteCondition = new HashMap<>();
		deleteCondition.put("masteru", "r");//删除角色
		deleteCondition.put("masteruId", roleId);
		privilegeDao.deleteAll(deleteCondition);
		for(Map<String, Object> map : parameter){
			SysPrivilege privilege = new SysPrivilege();
			privilege.setId(UuidUtil.get36UUID());
			privilege.setMasteru("r");
			privilege.setMasteruId(roleId);
			String type = (String) map.get("type");
			if("menu".equals(type)){
				privilege.setButton("m");
			}else{
				privilege.setButton("b");
			}
			privilege.setButtonId(map.get("id").toString());
			privilegeDao.insert(privilege);
		}
	}
}