package org.poi;

import org.apache.shiro.crypto.hash.Md5Hash;

public class TestMD5 {

	public static void main(String[] args) {
		String md5 = new Md5Hash("123456",null).toString();
		System.out.println(md5);
		org.apache.shiro.SecurityUtils s = null;
	}

}
