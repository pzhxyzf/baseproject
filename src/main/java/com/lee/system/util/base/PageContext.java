package com.lee.system.util.base;

import com.lee.system.util.base.Page;
/**
 * 页面请求环境设置
 * @author Administrator
 *
 */
public class PageContext {

	/**
	 * 分页属性副本
	 */
	private static ThreadLocal<Page> pageHolder = new ThreadLocal<Page>();

	/**
	 * 获取分页(ControllerInterceptor拦截器中设置初始值)
	 * @return
	 */
	public static Page getPage() {
		Page page = pageHolder.get();
		if (page == null) {
			page = new Page();
			pageHolder.set(page);
		}
		return page;
	}

	/**
	 * 删除分页信息
	 */
	public static void removePage(){
		pageHolder.remove();
	}
}
