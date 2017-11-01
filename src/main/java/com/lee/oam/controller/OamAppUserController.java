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
import org.springframework.web.servlet.ModelAndView;

import com.lee.oam.pojo.OamAppUser;
import com.lee.oam.service.OamAppUserService;
import com.lee.system.service.SysDictEntryService;
import com.lee.system.util.DictUtils;
import com.lee.system.util.PwdUtils;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 应用app用户信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/appuser")
public class OamAppUserController extends BaseController{
	
	@Autowired
	private OamAppUserService appUserService;
	@Autowired
	private SysDictEntryService dictService;
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
			List<OamAppUser>  list = appUserService.selectAllPage(parameter);
			if(CollectionUtils.isNotEmpty(list)){
				for(OamAppUser entity : list){
					if(StringUtils.isNotBlank(entity.getEnable())){
						entity.setEnableTitle(dictService.getDictName(DictUtils.Sys.ENABLE, entity.getEnable()));
					}
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
	@RequiresPermissions("oam:appuser:add")
	public ResponseMessage add(OamAppUser entity){
		 try {
			 entity.setId(UuidUtil.get36UUID());
			 entity.setLoginPassword(PwdUtils.encBase64(entity.getLoginPassword()));
			appUserService.insert(entity);
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
	@RequiresPermissions("oam:appuser:alter")
	public ResponseMessage alter(OamAppUser entity){
		 try {
			 entity.setLoginPassword(PwdUtils.encBase64(entity.getLoginPassword()));
			appUserService.update(entity);
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
	@RequiresPermissions("oam:appuser:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			appUserService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
	
	
	/**
	 * 跳转到应用登录信息页面
	 * @param parameter
	 * @return
	 */
	@RequestMapping("/toAppUser")
	public ModelAndView toAppUser(@RequestParam Map<String, Object> parameter){
		ModelAndView mv = new ModelAndView("oam/app/appUser");
		mv.addObject("user", parameter);
		return mv;
	}
	
}
