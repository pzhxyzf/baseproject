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

import com.lee.oam.pojo.OamApp;
import com.lee.oam.pojo.OamDevice;
import com.lee.oam.pojo.OamDeviceApp;
import com.lee.oam.pojo.OamIp;
import com.lee.oam.service.OamAppService;
import com.lee.oam.service.OamDeviceAppService;
import com.lee.oam.service.OamDeviceService;
import com.lee.oam.service.OamIpService;
import com.lee.system.shiro.ShiroUtils;
import com.lee.system.util.DateUtil;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 应用app部署信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/devapp")
public class OamDeviceAppController extends BaseController{
	
	@Autowired
	private OamAppService appService;
	@Autowired
	private OamDeviceAppService deviceAppService;
	@Autowired
	private OamIpService ipService;
	@Autowired
	private OamDeviceService devService;
	//@Autowired
	//private SysDictEntryService dictService;
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
			List<OamDeviceApp>  list = deviceAppService.selectAllPage(parameter);
			if(CollectionUtils.isNotEmpty(list)){
				for(OamDeviceApp devApp : list){
					devApp.setApp(appService.selectByPrimaryKey(devApp.getAppId()));
					devApp.setDev(devService.selectByPrimaryKey(devApp.getDeviceId()));
					if(StringUtils.isNotBlank(devApp.getIpId())){
						devApp.setIp(ipService.selectByPrimaryKey(devApp.getIpId()));
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
	@RequiresPermissions("oam:devapp:add")
	public ResponseMessage add(OamDeviceApp entity){
		 try {
			 entity.setId(UuidUtil.get36UUID());
			 entity.setCreateTime(DateUtil.getTime());
			 entity.setCreateUser(ShiroUtils.getLoingUserName());
			deviceAppService.insert(entity);
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
	@RequiresPermissions("oam:devapp:alter")
	public ResponseMessage alter(OamDeviceApp entity){
		 try {
			entity.setUpdateTime(DateUtil.getTime());
		    entity.setUpdateUser(ShiroUtils.getLoingUserName());
			deviceAppService.update(entity);
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
	@RequiresPermissions("oam:devapp:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			deviceAppService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
	
	/**
	 * 部署应用
	 * @param appId
	 * @return
	 */
	@RequestMapping(value="deployApp")
	public ModelAndView deployApp(String appId){
		ModelAndView mv = new ModelAndView("oam/app/deploy");
		OamDeviceApp devApp = new OamDeviceApp();
		devApp.setDeployUser(ShiroUtils.getLoingUserName());
		devApp.setDeployTime(DateUtil.getTime());
		if(StringUtils.isNotBlank(appId)){
			try {
				OamApp app = appService.selectByPrimaryKey(appId);
				if(app != null){
					devApp.setApp(app);
					mv.addObject("devApp", devApp);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mv;
	}

	/**
	 * 修改部署应用信息
	 * @param appId
	 * @return
	 */
	@RequestMapping(value="deployAlterApp")
	public ModelAndView deployAlterApp(String id){
		ModelAndView mv = new ModelAndView("oam/app/deploy");
		if(StringUtils.isNotBlank(id)){
			OamDeviceApp devApp;
			try {
				devApp = deviceAppService.selectByPrimaryKey(id);
				OamApp app = appService.selectByPrimaryKey(devApp.getAppId());
				devApp.setApp(app);
				OamDevice dev = devService.selectByPrimaryKey(devApp.getDeviceId());
				OamIp query = new OamIp();
				query.setDeviceId(dev.getId());
				//查询设备的ip,便于页面设置下拉选项
				List<OamIp> ips = ipService.selectAll(query);
				dev.setIps(ips);
				devApp.setDev(dev);
				if(StringUtils.isNotBlank(devApp.getIpId())){
					OamIp ip = ipService.selectByPrimaryKey(devApp.getIpId());
					devApp.setIp(ip);
				}
				mv.addObject("devApp", devApp);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mv;
	}
}
