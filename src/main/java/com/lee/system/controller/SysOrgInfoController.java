package com.lee.system.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lee.system.pojo.SysOrgInfo;
import com.lee.system.service.SysOrgInfoService;
import com.lee.system.util.Constant;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 机构信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/sysOrgInfo")
public class SysOrgInfoController extends BaseController{
	
	@Autowired
	private SysOrgInfoService orgService;
	
	/**
	 * 跳转至列表界面
	 * @return
	 */
	@RequestMapping(value="/toListPage")
	public String toListPage(){
		return "system/org/orgList";
	}
	/**
	 * 跳转至新增界面
	 * @return
	 */
	@RequestMapping(value="/toAddPage")
	public String toAddPage(ModelMap model,SysOrgInfo org){
		model.put("entity", org);
		return "system/org/orgInfo";
	}
	/**
	 * 跳转至修改或者详情界面
	 * @param model 
	 * @param key 主键
	 * @param opt 操作类型(add/edit/look)
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/toDetailPage")
	public String toDetailPage(ModelMap model,String key,String opt) throws Exception{
		SysOrgInfo org = orgService.findOrgByKey(key);
		model.put("entity", org);
		model.put("opt", opt);
		return "system/org/orgInfo";
	}
	/**
	 * 加载机构数
	 * @param id
	 * @param parentId
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/loadOrgTree")
	public List<SysOrgInfo> loadOrgTree(String id,String parentId){
		return orgService.loadOrgTree(id, parentId);
	}
	
	/**
	 * 查询机构列表
	 * @param org
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectOrgList")
	public Map<String,Object> selectOrgList(SysOrgInfo parameter){
		try {
			List<SysOrgInfo>  list = orgService.selectAllPage(parameter);
			List<Map<String, Object>> datas = new ArrayList<Map<String,Object>>();
			for(SysOrgInfo  o : list){
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("id", o.getId());
				map.put("name", o.getName());
				map.put("orgNum", o.getOrgNum());
				if(StringUtils.isNotBlank(o.getParentId())){
					SysOrgInfo parent = orgService.findOrgByKey(o.getParentId());
					map.put("parent", parent == null ? "": parent.getName());
				}else{
					map.put("parent", "");
				}
				map.put("parentId", o.getParentId());
				datas.add(map);
			}
			return buildDataTablesReturn(datas);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 保存机构信息
	 * @param org 机构信息
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/save")
	public ResponseMessage save(SysOrgInfo org,String opt){
		try {
			if(Constant.Opt.ADD.equals(opt)){
				org.setId(UuidUtil.get36UUID());
				orgService.saveOrg(org);
			}else if(Constant.Opt.EDIT.equals(opt)){
				orgService.updateOrg(org);
			}
			return okMessage(null);
		} catch (Exception e) {
			return errorMessage(e.getMessage());
		}
	}
	
	/**
	 * 删除数据
	 * @param key 主键
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/delOrg")
	public ResponseMessage delOrg(String key){
		try {
			return orgService.delOrg(key);
		} catch (Exception e) {
			return errorMessage(e.getMessage());
		}
	}
}
