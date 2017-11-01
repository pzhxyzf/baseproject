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

import com.lee.oam.pojo.OamApp;
import com.lee.oam.pojo.OamDomain;
import com.lee.oam.service.OamAppService;
import com.lee.oam.service.OamDomainService;
import com.lee.system.service.SysDictEntryService;
import com.lee.system.shiro.ShiroUtils;
import com.lee.system.util.DateUtil;
import com.lee.system.util.DictUtils;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 应用app信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/app")
public class OamAppController extends BaseController{
	
	@Autowired
	private OamAppService appService;
	@Autowired
	private SysDictEntryService dictService;
	@Autowired
	private OamDomainService domainService;
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
			List<OamApp>  list = appService.selectAllPage(parameter);
			if(CollectionUtils.isNotEmpty(list)){
				for(OamApp entity : list){
					if(StringUtils.isNotBlank(entity.getUseEvn())){
						entity.setUseEvnTitle(dictService.getDictName(DictUtils.App.SYHJ, entity.getUseEvn()));
					}
					if(StringUtils.isNotBlank(entity.getDomainId())){
						OamDomain domain = domainService.selectByPrimaryKey(entity.getDomainId());
						if(domain != null){
							entity.setDomainName(domain.getDomain());
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
	@RequiresPermissions("oam:app:add")
	public ResponseMessage add(OamApp entity){
		 try {
			 entity.setId(UuidUtil.get36UUID());
			 entity.setCreateTime(DateUtil.getTime());
			 entity.setCreateUser(ShiroUtils.getLoingUserName());
			appService.insert(entity);
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
	@RequiresPermissions("oam:app:alter")
	public ResponseMessage alter(OamApp entity){
		 try {
			entity.setUpdateTime(DateUtil.getTime());
		    entity.setUpdateUser(ShiroUtils.getLoingUserName());
			appService.update(entity);
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
	@RequiresPermissions("oam:app:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			appService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
}
