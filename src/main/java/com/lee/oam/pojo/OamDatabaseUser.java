package com.lee.oam.pojo;

import java.io.Serializable;

public class OamDatabaseUser implements Serializable {
    /**
     * 主键
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    private String id;

    /**
     * 数据库id
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    private String databaseId;

    /**
     * 用户名称
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    private String username;

    /**
     * 用户密码
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    private String userpd;

    /**
     * 角色 
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    private String role;

    /**
     * 备注
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    private String remark;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table oam_database_user
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    public String getId() {
        return id;
    }

    /**
     * 主键
     *
     * @param id java.lang.String
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * 数据库id
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    public String getDatabaseId() {
        return databaseId;
    }

    /**
     * 数据库id
     *
     * @param databaseId java.lang.String
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    public void setDatabaseId(String databaseId) {
        this.databaseId = databaseId == null ? null : databaseId.trim();
    }

    /**
     * 用户名称
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    public String getUsername() {
        return username;
    }

    /**
     * 用户名称
     *
     * @param username java.lang.String
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * 用户密码
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    public String getUserpd() {
        return userpd;
    }

    /**
     * 用户密码
     *
     * @param userpd java.lang.String
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    public void setUserpd(String userpd) {
        this.userpd = userpd == null ? null : userpd.trim();
    }

    /**
     * 角色  
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    public String getRole() {
        return role;
    }

    /**
     * 角色  
     *
     * @param role java.lang.String
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    public void setRole(String role) {
        this.role = role == null ? null : role.trim();
    }

    /**
     * 备注
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 备注
     *
     * @param remark java.lang.String
     *
     * @mbg.generated 2017-03-02 15:08:50
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}