package com.lee.system.util;

/**
 * 数据字典常用帮助类
 * @author Administrator
 *
 */
public interface DictUtils {
	public interface Sys{
		/**可用**/
		public static final String ENABLE_YES = "yes";
		/**不可用*/
		public static final String ENABLE_NO = "no";
		/**性别*/
		public static final String SEX = "sex";
		/**禁用可用*/
		public static final String ENABLE = "enable";
		/**是否显示*/
		public static final String OK = "ok";
		/**文件类型*/
		public static final String FILE_TYPE = "filetype";
		
	}
	
	/**设备字典信息*/
	public interface Device{
		/**类型：服务器硬件 (yj) 虚拟机(xlj) 阿里云(aly) 网络(wlsb) 安全(aqsb)*/
		public static final String SBLX = "sblx";
		/**服务器硬件 (yj)*/
		public static final String SBLX_YJ = "yj";
		/**虚拟机(xlj)*/
		public static final String SBLX_XLJ = "xlj";
		/**阿里云(aly)*/
		public static final String SBLX_ALY = "aly";
		/**网络(wlsb)*/
		public static final String SBLX_WLSB = "wlsb";
		/**安全(aqsb)*/
		public static final String SBLX_AQSB = "aqsb";
		
		/**设备使用情况*/
		public static final String SYQK = "syqk";
		/**闲置*/
		public static final String SYQK_XZ = "xz";
		/**在用*/
		public static final String SYQK_ZY = "zy";
		
		/**使用类型*/
		public static final String SYLX = "sylx";
		public static final String SYLX_ZJ = "zj";
		public static final String SYLX_BJ = "bj";
		
		/**设备密码类型*/
		public static final String DEV_USER_TYPE = "devustype";
	}
	/**应用字典信息*/
	public interface App{
		public static final String SYHJ="syhj";
	}
}
