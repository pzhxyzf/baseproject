package com.lee.system.util.base;

import com.lee.system.util.Constant;

/**
 * 页面返回消息
 * @author Administrator
 *
 */
public class ResponseMessage{

	/**消息结果 ok/error*/
	private String result = Constant.RESPONSE_SATAUS.OK;
	/**提示消息**/
	private String message;
	
	public ResponseMessage() {
		super();
	}
	public ResponseMessage(String result, String message) {
		super();
		this.result = result;
		this.message = message;
	}
	/**消息结果 ok/error 默认ok*/
	public String getResult() {
		return result;
	}
	/**消息结果 ok/error 默认ok*/
	public void setResult(String result) {
		this.result = result;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
