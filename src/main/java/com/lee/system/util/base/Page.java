package com.lee.system.util.base;

/**
 * 分页实体类
 * @author Administrator
 *
 */
public class Page implements java.io.Serializable{
 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 其实记录位置
	 */
	private int start = 0;
	
	/**
	 * 页面显示数量
	 */
	private int length = 10;
	/**
	 * 总记录数
	 */
	private int recordsTotal;
	
	/**
	 * 过滤后的总记录数
	 */
	private int recordsFiltered;

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getRecordsTotal() {
		return recordsTotal;
	}

	public void setRecordsTotal(int recordsTotal) {
		this.recordsTotal = recordsTotal;
	}

	public int getRecordsFiltered() {
		return recordsFiltered;
	}

	public void setRecordsFiltered(int recordsFiltered) {
		this.recordsFiltered = recordsFiltered;
	}
	
}
