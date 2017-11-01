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

import com.alibaba.fastjson.JSONArray;
import com.lee.oam.pojo.OamDevice;
import com.lee.oam.pojo.OamDeviceUser;
import com.lee.oam.pojo.OamIp;
import com.lee.oam.service.OamDeviceAttrService;
import com.lee.oam.service.OamDeviceService;
import com.lee.oam.service.OamDeviceUserService;
import com.lee.oam.service.OamIpService;
import com.lee.system.service.SysDepartmentService;
import com.lee.system.service.SysDictEntryService;
import com.lee.system.shiro.ShiroUtils;
import com.lee.system.util.DateUtil;
import com.lee.system.util.DictUtils;
import com.lee.system.util.PwdUtils;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 服务器硬件基础信息表
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/device")
public class OamDeviceController extends BaseController{
	
	@Autowired
	private OamDeviceService deviceService;
	@Autowired
	private SysDepartmentService deptService;
	@Autowired
	private SysDictEntryService dictService;
	@Autowired
	private OamDeviceAttrService deviceAttrService;
	@Autowired
	private OamIpService ipService;
	@Autowired
	private OamDeviceUserService devUserService;
	/**
	 * 分页查询列表
	 * @param org
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectAllPage")
	public Map<String,Object> selectAllPage(@RequestParam Map<String, Object> parameter){
		try {
			setParameter(parameter);
			Object types = parameter.get("types");
			if( types != null && StringUtils.isNotBlank(types.toString())){
				parameter.put("types", types.toString().split(","));
			}
			List<OamDevice>  list = deviceService.selectAllPage(parameter);
			if(CollectionUtils.isNotEmpty(list)){
				for(OamDevice entity : list){
					if(StringUtils.isNotBlank(entity.getDeptId()))
						entity.setDeptName(deptService.selectByPrimaryKey(entity.getDeptId()).getDeptName());
					if(StringUtils.isNotBlank(entity.getType())){
						entity.setTypeTitle(dictService.getDictName(DictUtils.Device.SBLX, entity.getType()));
						if(DictUtils.Device.SBLX_XLJ.equals(entity.getType())){
							entity.setHost(deviceService.selectByPrimaryKey(entity.getHostId()));
						}
					}
					if(StringUtils.isNotBlank(entity.getUseContition())){
						entity.setUseContitionTitle(dictService.getDictName(DictUtils.Device.SYQK, entity.getUseContition()));

					}
					if(StringUtils.isNotBlank(entity.getUseType())){
						entity.setUseType(dictService.getDictName(DictUtils.Device.SYLX, entity.getUseType()));

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
	 * 跳转到新增页面
	 * @param parameter
	 * @return
	 */
	@RequestMapping(value="toAddPage")
	public ModelAndView toAddPage(@RequestParam Map<String, Object> parameter,String page){
		ModelAndView mv = new ModelAndView("oam/device/"+page);
		mv.addObject("dev", parameter);
		return mv;
	}
	
	/**
	 * 新增
	 * @param role
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/add")
	@RequiresPermissions("oam:device:add")
	public ResponseMessage add(OamDevice entity,String jsonStr){
		 try {
			 List<OamIp> ips =  JSONArray.parseArray(jsonStr, OamIp.class);
			 entity.setIps(ips);
			 entity.setId(UuidUtil.get36UUID());
			 entity.setCreateTime(DateUtil.getTime());
			 entity.setCreateUser(ShiroUtils.getLoingUserName());
			deviceService.insert(entity);
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
	@RequestMapping(value="/alter")
	@RequiresPermissions("oam:device:alter")
	public ResponseMessage alter(OamDevice entity,String jsonStr){
		 try {
			 List<OamIp> ips =  JSONArray.parseArray(jsonStr, OamIp.class);
			 entity.setIps(ips);
			entity.setUpdateTime(DateUtil.getTime());
		    entity.setUpdateUser(ShiroUtils.getLoingUserName());
			deviceService.update(entity);
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
	@RequiresPermissions("oam:device:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			deviceService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
	
	/**
	 * 修改数据获取
	 * @param opt 操作类型(查看，新增，编辑)
	 * @param page 编辑页面
	 * @param id 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/alterData")
	@RequiresPermissions("oam:device:alter")
	public ModelAndView alter(String opt,String page,String id){
		ModelAndView mv = new ModelAndView("oam/device/"+page);
		mv.addObject("opt", opt);
		 try {
			OamDevice dev = deviceService.selectByPrimaryKey(id);
			if(dev != null){
				dev.setDeviceAttr(deviceAttrService.findByDevice(id));
				if(StringUtils.isNotBlank(dev.getDeptId())){
					dev.setDeptName(deptService.selectByPrimaryKey(dev.getDeptId()).getDeptName());
				}
				if(StringUtils.isNotBlank(dev.getHostId())){
					OamDevice hostDev = deviceService.selectByPrimaryKey(dev.getHostId());
					if(hostDev != null){
						dev.setHostSerialNo(hostDev.getSerialNo());
					}
				}
				//查询ip
				OamIp query = new OamIp();
				query.setDeviceId(dev.getId());
				dev.setIps(ipService.selectAll(query));
			}
			mv.addObject("dev", dev);
		} catch (Exception e) {
			mv.addObject("dev", new OamDevice());
		}
		 return mv;
	}
	/**
	 * 公共选择页面
	 * @param parameter
	 * @return
	 */
	@RequestMapping("/toPublicDev")
	public ModelAndView toPublicDev(@RequestParam Map<String, Object> parameter){
		ModelAndView mv = new ModelAndView("oam/device/publicDevice");
		mv.addObject("param", parameter);
		return mv;
	}
	
	/**
	 * 跳转到设备登录账户信息页面
	 * @param parameter
	 * @return
	 */
	@RequestMapping("/toDevUser")
	public ModelAndView toDevUser(@RequestParam Map<String, Object> parameter){
		ModelAndView mv = new ModelAndView("oam/device/devUser");
		mv.addObject("user", parameter);
		return mv;
	}
	/**
	 * 分页查询列表
	 * @param org
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectAllUserPage")
	@RequiresPermissions("oam:deviceuser:query")
	public Map<String,Object> selectAllUserPage(@RequestParam Map<String, Object> parameter){
		try {
			setParameter(parameter);
			List<OamDeviceUser>  list = devUserService.selectAllPage(parameter);
			if(CollectionUtils.isNotEmpty(list)){
				for(OamDeviceUser entity : list){
					if(StringUtils.isNotBlank(entity.getType())){
						entity.setTypeTitle(dictService.getDictName(DictUtils.Device.DEV_USER_TYPE, entity.getType()));
					}
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
	@RequestMapping(value="/addDevUser")
	@RequiresPermissions("oam:deviceuser:add")
	public ResponseMessage addDevUser(OamDeviceUser entity){
		 try {
			 entity.setId(UuidUtil.get36UUID());
			 entity.setLoginPassword(PwdUtils.encBase64(entity.getLoginPassword()));
			 devUserService.insert(entity);
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
	@RequestMapping(value="/alterDevUser")
	@RequiresPermissions("oam:deviceuser:alter")
	public ResponseMessage alterDevUser(OamDeviceUser entity){
		 try {
			 entity.setLoginPassword(PwdUtils.encBase64(entity.getLoginPassword()));
			 devUserService.update(entity);
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
	@RequestMapping(value="/delDevUser")
	@RequiresPermissions("oam:deviceuser:del")
	public ResponseMessage delDevUser(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			devUserService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
	
	/**
	 * 跳转到设备升级信息页面
	 * @param parameter
	 * @return
	 */
	@RequestMapping("/toUpgrade")
	public ModelAndView toUpgrade(@RequestParam Map<String, Object> parameter){
		ModelAndView mv = new ModelAndView("oam/device/devUpgrade");
		mv.addObject("upgrade", parameter);
		return mv;
	}
	
}
