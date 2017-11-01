package com.lee.system.util.resolver;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.lee.system.util.LoggerHelper;

/**
 * 异常拦截处理器
 * 
 * @author Administrator
 *
 */
public class MyExceptionResolver implements HandlerExceptionResolver {

	private LoggerHelper logger = LoggerHelper.getLogger(HandlerExceptionResolver.class);
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
		System.out.println("==============异常开始=============");
		System.out.println(ex);
		String msg = null;
		if (ex instanceof UnauthorizedException){
			msg = "你没有权限操作!";
		}else{
			msg = ex.toString();
		}
		logger.debug(msg, ex);
		// 判断是否 Ajax 请求
		if ((request.getHeader("accept").indexOf("application/json") > -1 || (request.getHeader("X-Requested-With") != null && request.getHeader("X-Requested-With").indexOf("XMLHttpRequest") > -1))) {
			try {
				response.setContentType("text/html;charset=UTF-8");
				response.setCharacterEncoding("UTF-8");
				PrintWriter writer = response.getWriter();
				writer.write(msg);
				writer.flush();
				writer.close();
			} catch (Exception e) {
				logger.debug(e.getMessage(), e);
			}
			System.out.println("==============异常结束=============");
			return null;
		}

		ModelAndView mv = new ModelAndView("error");
		mv.addObject("exception", msg);
		System.out.println("==============异常结束=============");
		return mv;
	}

}
