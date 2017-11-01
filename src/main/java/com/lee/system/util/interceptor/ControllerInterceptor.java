package com.lee.system.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.lee.system.util.base.Page;
import com.lee.system.util.base.PageContext;

/**
 * 拦截器
 * @author Administrator
 *
 */
public class ControllerInterceptor  implements HandlerInterceptor{

	/**
	 * 是否是列表加载数据请求
	 */
	private boolean isListPageRequest = false;
	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		if(isListPageRequest){
			//移除本地线程变量
			PageContext.removePage();
		}
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2) throws Exception {
		setPageContext(arg0);
		return true;
	}

	/**
	 * 分页参数设置
	 * @param request
	 */
	private void setPageContext(HttpServletRequest request) {
		String draw = request.getParameter("draw");
		if(StringUtils.isNotBlank(draw)){//datatables 1.10 返回参数
			isListPageRequest = true;
			//起始页码
			Integer iDisplayStart=0;
			//页码长度
			Integer iDisplayLength=0;
			iDisplayStart = NumberUtils.toInt(request.getParameter("start"));//datatables v1.10参数
			iDisplayLength = NumberUtils.toInt(request.getParameter("length"));
			Page page = PageContext.getPage();
			page.setStart(iDisplayStart);
			page.setLength(iDisplayLength);
		}
//		String sEcho=request.getParameter("sEcho");//datatables 1.9 返回参数
//		String draw = request.getParameter("draw");
//		//起始页码
//		Integer iDisplayStart=0;
//		//页码长度
//		Integer iDisplayLength=10;
//		
//		if(StringUtils.isBlank(sEcho)&&StringUtils.isNotBlank(draw)){//datatables 1.10 返回参数
//			iDisplayStart = NumberUtils.toInt(request.getParameter("start"));//datatables v1.10参数
//			iDisplayLength = NumberUtils.toInt(request.getParameter("length"));
//		}
//		if(StringUtils.isNotBlank(sEcho)&&StringUtils.isBlank(draw)){ //datatables 1.9 返回参数
//			iDisplayStart = NumberUtils.toInt(request.getParameter("iDisplayStart"));//datatables v1.9参数
//			iDisplayLength = NumberUtils.toInt(request.getParameter("iDisplayLength"));
//		}
//		if (iDisplayStart != 0 && iDisplayLength != 0) {
//			Page page = PageContext.getPage();
//			page.setStart(iDisplayStart);
//			page.setLength(iDisplayLength);
//		}
	}
}
