package com.lee.system.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class SysMenu implements Serializable {

	/**
	 * 主键
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	private String id;
	/**
	 * 上级菜单主键
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	private String parentId;
	private String parentName;
	/**
	 * 菜单名称
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	private String menuName;
	/**
	 * 菜单地址
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	private String menuUrl;
	/**
	 * 菜单序号
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	private Integer menuOrder;
	/**
	 * 菜单显示图标
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	private String menuIcon;
	
	/**
	 * 是否是父节点
	 */
	private String isparent;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table sys_menu
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * 下一级目录(非数据库字段，首页菜单展示时用到)
	 */
	private List<SysMenu> nexts = new ArrayList<>();
	/**
	 * 主键
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	public String getId() {
		return id;
	}

	/**
	 * 主键
	 * @param id  java.lang.String
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	public void setId(String id) {
		this.id = id == null ? null : id.trim();
	}

	/**
	 * 上级菜单主键
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	public String getParentId() {
		return parentId;
	}

	/**
	 * 上级菜单主键
	 * @param parentId  java.lang.String
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	public void setParentId(String parentId) {
		this.parentId = parentId == null ? null : parentId.trim();
	}

	/**
	 * 菜单名称
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	public String getMenuName() {
		return menuName;
	}

	/**
	 * 菜单名称
	 * @param menuName  java.lang.String
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	public void setMenuName(String menuName) {
		this.menuName = menuName == null ? null : menuName.trim();
	}

	/**
	 * 菜单地址
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	public String getMenuUrl() {
		return menuUrl;
	}

	/**
	 * 菜单地址
	 * @param menuUrl  java.lang.String
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl == null ? null : menuUrl.trim();
	}

	/**
	 * 菜单序号
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	public Integer getMenuOrder() {
		return menuOrder;
	}

	/**
	 * 菜单序号
	 * @param menuOrder  java.lang.Integer
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	public void setMenuOrder(Integer menuOrder) {
		this.menuOrder = menuOrder;
	}

	/**
	 * 菜单显示图标
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	public String getMenuIcon() {
		return menuIcon;
	}

	/**
	 * 菜单显示图标
	 * @param menuIcon  java.lang.String
	 * @mbggenerated  2017-02-22 14:39:25
	 */
	public void setMenuIcon(String menuIcon) {
		this.menuIcon = menuIcon == null ? null : menuIcon.trim();
	}

	public String getIsparent() {
		return isparent;
	}

	public void setIsparent(String isparent) {
		this.isparent = isparent;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public List<SysMenu> getNexts() {
		return nexts;
	}

	public void setNexts(List<SysMenu> nexts) {
		this.nexts = nexts;
	}

	 
	
}