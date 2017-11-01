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

import com.lee.system.pojo.SysDictEntry;
import com.lee.system.pojo.SysDictType;
import com.lee.system.service.SysDictEntryService;
import com.lee.system.service.SysDictTypeService;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 数据字典信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/dict")
public class SysDictController extends BaseController{
	
	@Autowired
	private SysDictTypeService typeService;
	@Autowired
	private SysDictEntryService entryService;
	
	/**
	 * 分页查询数据字典类型
	 * @param org
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectAllTypePage")
	public Map<String,Object> selectAllTypePage(@RequestParam Map<String, Object> parameter){
		try {
			setParameter(parameter);
			List<SysDictType>  list = typeService.selectAllPage(parameter);
			return buildDataTablesReturn(list,parameter);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	} 
	/**
	 * 分页查询数据字典明细
	 * @param org
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectAllEntryPage")
	public Map<String,Object> selectAllEntryPage(@RequestParam Map<String, Object> parameter){
		try {
			setParameter(parameter);
			List<SysDictEntry>  list = entryService.selectAllPage(parameter);
			return buildDataTablesReturn(list,parameter);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	} 
 
	
	/**
	 * 新增字典类型
	 * @param  
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/typeAdd")
	@RequiresPermissions("sys:dictType:add")
	public ResponseMessage typeAdd(SysDictType entity){
		 try {
			if(StringUtils.isBlank(entity.getDictType())){
				return errorMessage("请填写字典类型");
			}
			typeService.insert(entity);
			return okMessage("新增成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage(e.getMessage());
		}
	}
	/**
	 * 新增字典明细
	 * @param  
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/entryAdd")
	@RequiresPermissions("sys:dictEntry:add")
	public ResponseMessage entryAdd(SysDictEntry entity){
		 try {
			if(StringUtils.isBlank(entity.getDictType())){
				return errorMessage("请填写字典类型");
			}
			if(StringUtils.isBlank(entity.getDictCode())){
				return errorMessage("请填写字典编码");
			}
			if(StringUtils.isBlank(entity.getDictName())){
				return errorMessage("请填写字典名称");
			}
			entryService.insert(entity);
			return okMessage("新增成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage(e.getMessage());
		}
	}
	
	/**
	 * 修改
	 * @param role
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/typeAlter")
	@RequiresPermissions("sys:dictType:alter")
	public ResponseMessage alterType(SysDictType entity){
		 try {
			 if(StringUtils.isBlank(entity.getDictType())){
					return errorMessage("请填写字典类型");
			}
			typeService.update(entity);
			return okMessage("修改成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage(e.getMessage());
		}
	}
	/**
	 * 修改
	 * @param role
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/entryAlter")
	@RequiresPermissions("sys:dictEntry:alter")
	public ResponseMessage entryAlter(SysDictEntry entity){
		 try {
			 if(StringUtils.isBlank(entity.getDictType())){
				return errorMessage("请填写字典类型");
			}
			if(StringUtils.isBlank(entity.getDictCode())){
				return errorMessage("请填写字典编码");
			}
			if(StringUtils.isBlank(entity.getDictName())){
				return errorMessage("请填写字典名称");
			}
			entryService.update(entity);
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
	@RequestMapping(value="/typeDel")
	@RequiresPermissions("sys:dictType:del")
	public ResponseMessage typeDel(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			typeService.deleteDict(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/entryDel")
	@RequiresPermissions("sys:dictEntry:del")
	public ResponseMessage entryDel(@RequestParam Map<String, Object> parameter){
		 try {
			if(org.springframework.util.CollectionUtils.isEmpty(parameter)){
				return errorMessage("请选择需要删除记录");
			}
			entryService.deleteByPrimaryKey(parameter);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
}
