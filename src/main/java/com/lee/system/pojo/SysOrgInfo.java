package com.lee.system.pojo;

import java.util.ArrayList;
import java.util.List;

/**
 * 机构信息
 * @author Administrator
 *
 */
public class SysOrgInfo implements java.io.Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/** 机构id*/
	private String id;
	/** 机构名称 */
    private String name;
    /** 机构全称 */
    private String fullName;
    /** 机构编码 */
    private String orgNum;
    /** 机构等级 */
    private String level;
    /** 机构状态 */
    private String status;
    /** 上级机构 */
    private String parentId;
    /** 联系电话 */
    private String linkTel;
    /** 联系人 */
    private String linkMan;
    /** 联系地址 */
    private String linkAddress;
    /** 成立日期 */
    private String foundDate;
    /** 创建人 */
    private String createUser;
    /** 创建时间 */
    private String createTime;
    /** 更新人 */
    private String updateUser;
    /** 更新时间 */
    private String updateTime;
    /** 备注 */
    private String remark;
    /** 机构类型 (省行，市分行 ，一级支行，二级支行)*/
    private String orgType;
    /** 机构属性 (银行，代理) */
    private String orgAttr;
    /** 显示顺序 */
    private Integer levelOrder;
    /** 是否父节点 */
    private boolean isParent;
    /** 子节点 */
    private List<SysOrgInfo> childOrgList = new ArrayList<SysOrgInfo>();
    
    
    public List<SysOrgInfo> getChildOrgList() {
		return childOrgList;
	}

	public void setChildOrgList(List<SysOrgInfo> childOrgList) {
		this.childOrgList = childOrgList;
	}

	public boolean getIsParent() {
		return isParent;
	}

	public void setIsParent(boolean isParent) {
		this.isParent = isParent;
	}

	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName == null ? null : fullName.trim();
    }

    public String getOrgNum() {
        return orgNum;
    }

    public void setOrgNum(String orgNum) {
        this.orgNum = orgNum == null ? null : orgNum.trim();
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level == null ? null : level.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    public String getLinkTel() {
        return linkTel;
    }

    public void setLinkTel(String linkTel) {
        this.linkTel = linkTel == null ? null : linkTel.trim();
    }

    public String getLinkMan() {
        return linkMan;
    }

    public void setLinkMan(String linkMan) {
        this.linkMan = linkMan == null ? null : linkMan.trim();
    }

    public String getLinkAddress() {
        return linkAddress;
    }

    public void setLinkAddress(String linkAddress) {
        this.linkAddress = linkAddress == null ? null : linkAddress.trim();
    }

    public String getFoundDate() {
        return foundDate;
    }

    public void setFoundDate(String foundDate) {
        this.foundDate = foundDate == null ? null : foundDate.trim();
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser == null ? null : createUser.trim();
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime == null ? null : createTime.trim();
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser == null ? null : updateUser.trim();
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime == null ? null : updateTime.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getOrgType() {
        return orgType;
    }

    public void setOrgType(String orgType) {
        this.orgType = orgType == null ? null : orgType.trim();
    }

    public String getOrgAttr() {
        return orgAttr;
    }

    public void setOrgAttr(String orgAttr) {
        this.orgAttr = orgAttr == null ? null : orgAttr.trim();
    }


    public Integer getLevelOrder() {
        return levelOrder;
    }

    public void setLevelOrder(Integer levelOrder) {
        this.levelOrder = levelOrder;
    }
}