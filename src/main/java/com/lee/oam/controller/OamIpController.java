package com.lee.oam.controller;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lee.oam.pojo.OamIp;
import com.lee.oam.service.OamIpService;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * IP信息表
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/ip")
public class OamIpController extends BaseController{
	
	@Autowired
	private OamIpService ipService;
	/**
	 * 不分页查询列表
	 * @param parameter
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectAll")
	public Map<String,Object> selectAll(@RequestParam Map<String, Object> parameter){
		try {
			List<OamIp>  list = ipService.selectAll(parameter);
			return buildDataTablesReturn(list,parameter);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	} 
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/del")
	@RequiresPermissions("oam:ip:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			ipService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
	
	
}
