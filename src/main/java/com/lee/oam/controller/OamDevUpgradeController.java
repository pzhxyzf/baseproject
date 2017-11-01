package com.lee.oam.controller;

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

import com.lee.oam.pojo.OamDeviceUpgrade;
import com.lee.oam.service.OamDeviceUpgradeService;
import com.lee.system.util.PwdUtils;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 设备升级信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/upgrade")
public class OamDevUpgradeController extends BaseController{
	
	@Autowired
	private OamDeviceUpgradeService upgradeService;
	/**
	 * 分页查询列表
	 * @param parameter
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectAllPage")
	public Map<String,Object> selectAllPage(@RequestParam Map<String, Object> parameter){
		try {
			setParameter(parameter);
			List<OamDeviceUpgrade>  list = upgradeService.selectAllPage(parameter);
			if(CollectionUtils.isNotEmpty(list)){
				for(OamDeviceUpgrade entity : list){
					entity.setLoginPassword(PwdUtils.decBase64(entity.getLoginPassword()));
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
	 * @param entity
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/add")
	@RequiresPermissions("oam:upgrade:add")
	public ResponseMessage add(OamDeviceUpgrade entity){
		 try {
			 entity.setId(UuidUtil.get36UUID());
			 entity.setLoginPassword(PwdUtils.encBase64(entity.getLoginPassword()));
			upgradeService.insert(entity);
			return okMessage("新增成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage(e.getMessage());
		}
	}
	
	/**
	 * 修改
	 * @param entity
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/alter")
	@RequiresPermissions("oam:upgrade:alter")
	public ResponseMessage alter(OamDeviceUpgrade entity){
		 try {
			 entity.setLoginPassword(PwdUtils.encBase64(entity.getLoginPassword()));
			upgradeService.update(entity);
			return okMessage("修改成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage(e.getMessage());
		}
	}
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/del")
	@RequiresPermissions("oam:upgrade:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			upgradeService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
}
