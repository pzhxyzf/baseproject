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

import com.lee.oam.pojo.OamSoftAsset;
import com.lee.oam.service.OamSoftAssetService;
import com.lee.system.pojo.SysDepartment;
import com.lee.system.service.SysDepartmentService;
import com.lee.system.service.SysDictEntryService;
import com.lee.system.shiro.ShiroUtils;
import com.lee.system.util.DateUtil;
import com.lee.system.util.DictUtils;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 软件资产信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/softAsset")
public class OamSoftAssetController extends BaseController{
	
	@Autowired
	private OamSoftAssetService softAssetService;
	@Autowired
	private SysDictEntryService dictService;
	@Autowired
	private SysDepartmentService deptService;
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
			List<OamSoftAsset>  list = softAssetService.selectAllPage(parameter);
			if(CollectionUtils.isNotEmpty(list)){
				for(OamSoftAsset entity : list){
					if(StringUtils.isNotBlank(entity.getUsed())){
						entity.setUsedTitle(dictService.getDictName(DictUtils.Sys.OK, entity.getUsed()));
					}
					if(StringUtils.isNotBlank(entity.getDeptId())){
						SysDepartment dept = deptService.selectByPrimaryKey(entity.getDeptId());
						if(dept != null){
							entity.setDeptName(dept.getDeptName());
						}
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
	 * @param entity
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/add")
	@RequiresPermissions("oam:softasset:add")
	public ResponseMessage add(OamSoftAsset entity){
		 try {
			 entity.setId(UuidUtil.get36UUID());
			 entity.setCreateTime(DateUtil.getTime());
			 entity.setCreateUser(ShiroUtils.getLoingUserName());
			softAssetService.insert(entity);
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
	@RequiresPermissions("oam:softasset:alter")
	public ResponseMessage alter(OamSoftAsset entity){
		 try {
			entity.setUpdateTime(DateUtil.getTime());
		    entity.setUpdateUser(ShiroUtils.getLoingUserName());
			softAssetService.update(entity);
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
	@RequiresPermissions("oam:softasset:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			softAssetService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
}
