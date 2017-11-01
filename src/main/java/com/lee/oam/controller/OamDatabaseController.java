package com.lee.oam.controller;

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
import com.lee.oam.pojo.OamDatabase;
import com.lee.oam.pojo.OamDatabaseUser;
import com.lee.oam.pojo.OamDevice;
import com.lee.oam.pojo.OamIp;
import com.lee.oam.service.OamAppService;
import com.lee.oam.service.OamDatabaseService;
import com.lee.oam.service.OamDatabaseUserService;
import com.lee.oam.service.OamDeviceService;
import com.lee.oam.service.OamIpService;
import com.lee.system.service.SysDictEntryService;
import com.lee.system.shiro.ShiroUtils;
import com.lee.system.util.DateUtil;
import com.lee.system.util.DictUtils;
import com.lee.system.util.PwdUtils;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 数据库信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/database")
public class OamDatabaseController extends BaseController{
	
	@Autowired
	private OamAppService appService;
	@Autowired
	private SysDictEntryService dictService;
	@Autowired
	private OamIpService ipService;
	@Autowired
	private OamDatabaseService databaseService;
	@Autowired
	private OamDeviceService devService;
	@Autowired
	private  OamDatabaseUserService dbUserService;
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
			List<OamDatabase>  list = databaseService.selectAllPage(parameter);
			if(CollectionUtils.isNotEmpty(list)){
				for(OamDatabase entity : list){
					if(StringUtils.isNotBlank(entity.getUseType())){
						entity.setUseTypeTitle(dictService.getDictName(DictUtils.Device.SYLX, entity.getUseType()));
					}
					if(StringUtils.isNotBlank(entity.getAppId())){
						entity.setApp(appService.selectByPrimaryKey(entity.getAppId()));
					}
					if(StringUtils.isNotBlank(entity.getDeviceId())){
						entity.setDev(devService.selectByPrimaryKey(entity.getDeviceId()));
					}
					if(StringUtils.isNotBlank(entity.getIpId())){
						entity.setIp(ipService.selectByPrimaryKey(entity.getIpId()));
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
	@RequiresPermissions("oam:database:add")
	public ResponseMessage add(OamDatabase entity,String userJson){
		 try {
			 List<OamDatabaseUser> users =  JSONArray.parseArray(userJson, OamDatabaseUser.class);
			 entity.setId(UuidUtil.get36UUID());
			 entity.setCreateTime(DateUtil.getTime());
			 entity.setCreateUser(ShiroUtils.getLoingUserName());
			 entity.setUsers(users);
			databaseService.insert(entity);
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
	@RequiresPermissions("oam:database:alter")
	public ResponseMessage alter(OamDatabase entity,String userJson){
		 try {
			 List<OamDatabaseUser> users =  JSONArray.parseArray(userJson, OamDatabaseUser.class);
			entity.setUpdateTime(DateUtil.getTime());
		    entity.setUpdateUser(ShiroUtils.getLoingUserName());
		    entity.setUsers(users);
			databaseService.update(entity);
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
	@RequiresPermissions("oam:database:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			databaseService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
	
	/**
	 * 跳转到新增页面
	 * @return
	 */
	@RequestMapping(value="toAddPage")
	public ModelAndView toAddPage(){
		ModelAndView mv = new ModelAndView("oam/database/databaseEdit");
		OamDatabase db = new OamDatabase();
		db.setInstallUser(ShiroUtils.getLoingUserName());
		db.setInstallTime(DateUtil.getTime());
		mv.addObject("database", db);
		return mv;
	}
	
	/**
	 * 跳转到编辑页面
	 * @param id 数据库ID
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="toAlterPage")
	public ModelAndView toAlterPage(String opt,String id) throws Exception{
		ModelAndView mv = new ModelAndView("oam/database/databaseEdit");
		if(StringUtils.isBlank(id)){
			return mv;
		}
		OamDatabase db = databaseService.selectByPrimaryKey(id);
		if(StringUtils.isNotBlank(db.getAppId())){
			db.setApp(appService.selectByPrimaryKey(db.getAppId()));
		}
		if(StringUtils.isNotBlank(db.getDeviceId())){
			OamDevice dev = devService.selectByPrimaryKey(db.getDeviceId());
			if(dev != null ){
				//查询ip
				OamIp query = new OamIp();
				query.setDeviceId(dev.getId());
				dev.setIps(ipService.selectAll(query));
				db.setDev(dev);
			}
		}
		Map<String, Object> query = new HashMap<>();
		query.put("databaseId", id);
		List<OamDatabaseUser> users = dbUserService.selectAll(query);
		if(CollectionUtils.isNotEmpty(users)){
			for(OamDatabaseUser user : users){
				user.setUserpd(PwdUtils.decBase64(user.getUserpd()));
			}
		}
		db.setUsers(users);
		mv.addObject("database", db);
		mv.addObject("opt", opt);
		return mv;
	}
	
	/**
	 * 删除用户
	 * @param id 用户id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/delUser")
	@RequiresPermissions("oam:databaseuser:del")
	public ResponseMessage delUser(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			dbUserService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
}
