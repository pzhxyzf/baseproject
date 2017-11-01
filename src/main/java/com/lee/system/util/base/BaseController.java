package com.lee.system.util.base;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.lee.system.util.Constant;
import com.lee.system.util.LoggerHelper;

public class BaseController {
	protected LoggerHelper logger = LoggerHelper.getLogger(BaseController.class);
	/**
	 * 得到request对象
	 */
	protected HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		
		return request;
	}
	/**
	 * 设置分页参数
	 * @param map
	 */
	protected void setParameter(Map<String, Object> parameter){
		HttpServletRequest request = this.getRequest();
		String draw = request.getParameter("draw");
		int offset = NumberUtils.toInt(request.getParameter("start"));//datatables v1.10参数
		int limit = NumberUtils.toInt(request.getParameter("length"));
		parameter.put("datatable_offset", offset);
		parameter.put("datatable_limit",limit);
		parameter.put("datatable_draw", draw);
	}
	/**
	 * 返回dataTable列表数据
	 * @param list
	 * @param parameter
	 * @return
	 */
	protected <T> Map<String, Object> buildDataTablesReturn(List<T> list,Map<String, Object> parameter) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", list);
		map.put("draw", parameter.get("datatable_draw"));
		map.put("recordsTotal", parameter.get("datatable_total"));
		map.put("recordsFiltered", parameter.get("datatable_total"));
		return map;
	}
	/**
	 * 返回dataTable列表数据
	 * @param list
	 * @return
	 */
	protected <T> Map<String, Object> buildDataTablesReturn(List<T> list) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", list);
		map.put("draw", "1");
		map.put("recordsTotal", list.size());
		map.put("recordsFiltered", list.size());
		return map;
	}
	/**
	 * 返回成功提示
	 * @param message 提示信息
	 * @return
	 */
	protected ResponseMessage okMessage(String message){
		ResponseMessage rm = new ResponseMessage();
		rm.setMessage(message);
		return rm;
	}
	
	/**
	 * 返回失败信息
	 * @param message 失败信息
	 * @return
	 */
	protected ResponseMessage errorMessage(String message){
		ResponseMessage rm = new ResponseMessage();
		rm.setResult(Constant.RESPONSE_SATAUS.ERROR);
		rm.setMessage(message);
		return rm;
	}
}
