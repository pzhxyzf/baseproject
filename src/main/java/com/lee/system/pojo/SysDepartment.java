package com.lee.system.pojo;

import java.io.Serializable;

public class SysDepartment implements Serializable {
    /**
     * 主键
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    private String id;

    /**
     * 部门名称
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    private String deptName;

    /**
     * 显示序号
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    private String deptCode;

    /**
     * 创建时间
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    private String createTime;

    /**
     * 备注
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    private String remark;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table sys_department
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    public String getId() {
        return id;
    }

    /**
     * 主键
     *
     * @param id java.lang.String
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * 部门名称
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    public String getDeptName() {
        return deptName;
    }

    /**
     * 部门名称
     *
     * @param deptName java.lang.String
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    public void setDeptName(String deptName) {
        this.deptName = deptName == null ? null : deptName.trim();
    }

    /**
     * 显示序号
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    public String getDeptCode() {
        return deptCode;
    }

    /**
     * 显示序号
     *
     * @param deptCode java.lang.String
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    public void setDeptCode(String deptCode) {
        this.deptCode = deptCode == null ? null : deptCode.trim();
    }

    /**
     * 创建时间
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    public String getCreateTime() {
        return createTime;
    }

    /**
     * 创建时间
     *
     * @param createTime java.util.Date
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    /**
     * 备注
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 备注
     *
     * @param remark java.lang.String
     *
     * @mbg.generated 2017-02-24 20:44:42
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}