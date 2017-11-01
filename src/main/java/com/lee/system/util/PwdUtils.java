package com.lee.system.util;

import java.security.MessageDigest;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.codec.Base64;
import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * 加密解密工具
 * @author Administrator
 *
 */
public class PwdUtils {

	public static String md5(String str) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(str.getBytes());
			byte b[] = md.digest();

			int i;

			StringBuffer buf = new StringBuffer("");
			for (int offset = 0; offset < b.length; offset++) {
				i = b[offset];
				if (i < 0)
					i += 256;
				if (i < 16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
			}
			str = buf.toString();
		} catch (Exception e) {
			e.printStackTrace();

		}
		return str;
	}

	/**
	 * md5加密
	 * @param password 密码
	 * @param solt 盐
	 * @return
	 */
    public static String shiroMD5(String password,String solt){
    	return new Md5Hash(new Md5Hash(password,solt),solt+password+solt).toString();
    }
    
    /**
     * 对称加密
     * @param str
     * @return
     */
    public static String encBase64(String str) {  
    	if(StringUtils.isEmpty(str)){
    		return null;
    	}
        return Base64.encodeToString(str.getBytes());  
    }  
    
    /**
     * 对称解密
     * @param str
     * @return
     */
    public static String decBase64(String str){  
    	if(StringUtils.isEmpty(str)){
    		return null;
    	}
        return Base64.decodeToString(str);  
    }  
    
    public static void main(String[] args) {
		String a = "s";
		String b = encBase64(a);
		String c = decBase64(b);
		System.out.println(b);
		System.out.println(c);
	}
}
