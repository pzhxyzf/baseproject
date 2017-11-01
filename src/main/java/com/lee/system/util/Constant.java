package com.lee.system.util;

/**
 * 常量定义
 * @author Administrator
 *
 */
public interface Constant {

	/**
	 * 返回页面状态信息
	 * @author Administrator
	 *
	 */
	public interface RESPONSE_SATAUS{
		public static final String OK="ok";
		public static final String ERROR="error";
	}
	
	/**
	 * 页面操作类型
	 * @author Administrator
	 *
	 */
	public interface Opt{
		public static final String ADD = "add";
		public static final String EDIT = "edit";
		public static final String LOOK = "look";
	}
}
