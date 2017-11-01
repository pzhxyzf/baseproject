package com.lee.system.controller;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lee.system.pojo.SysDepartment;
import com.lee.system.service.SysDepartmentService;
import com.lee.system.util.DateUtil;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 部门信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/dept")
public class SysDepartmentController extends BaseController{
	
	@Autowired
	private SysDepartmentService deptService;
	
	@RequestMapping("/toPage")
	public String toPage(){
	   return "system/dept/deptList";
	}
	@RequestMapping("/toPublicPage")
	public String toPublicPage(){
	   return "system/dept/publicDept";
	}
	/**
	 * 分页查询机构列表
	 * @param org
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectAllPage")
	public Map<String,Object> selectAllPage(@RequestParam Map<String, Object> parameter){
		try {
			setParameter(parameter);
			List<SysDepartment>  list = deptService.selectAllPage(parameter);
			return buildDataTablesReturn(list,parameter);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	} 
	/**
	 * 查询机构列表
	 * @param org
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectAll")
	public Map<String,Object> selectAll(@RequestParam Map<String, Object> parameter){
		try {
			List<SysDepartment>  list = deptService.selectAll(parameter);
			return buildDataTablesReturn(list);
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
	@RequiresPermissions("sys:dept:add")
	public ResponseMessage add(SysDepartment entity){
		 try {
			 entity.setId(UuidUtil.get36UUID());
			 entity.setCreateTime(DateUtil.getTime());
			deptService.insert(entity);
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
	@RequiresPermissions("sys:dept:alter")
	public ResponseMessage alter(SysDepartment entity){
		 try {
			deptService.update(entity);
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
	@RequiresPermissions("sys:dept:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			deptService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
}
