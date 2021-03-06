package com.lee.oam.pojo;

import java.io.Serializable;

import org.apache.commons.lang3.StringUtils;

public class OamDeviceApp implements Serializable {
    /**
     * 主键
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String id;

    /**
     * 关联应用
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String appId;

    /**
     * 关联设备
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String deviceId;

    /**
     * 关联ip
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String ipId;

    /**
     * 占用端口
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private Integer port;

    /**
     * 是否启用
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String enable;

    /**
     * 使用类型 主机 备机
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String useType;

    /**
     * 容器类型
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String container;

    /**
     * 运行环境
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String env;

    /**
     * 部署路径
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String path;

    /**
     * 项目部署人员
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String deployUser;

    /**
     * 部署时间
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String deployTime;

    /**
     * 记录创建人员
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String createUser;

    /**
     * 记录创建时间
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String createTime;

    /**
     * 记录更新人员
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String updateUser;

    /**
     * 记录更新时间
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private String updateTime;

    private String remark;

    private OamDevice dev;
    private OamApp app;
    private OamIp ip;
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table oam_device_app
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getId() {
        return id;
    }

    /**
     * 主键
     *
     * @param id java.lang.String
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * 关联应用
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getAppId() {
        return appId;
    }

    /**
     * 关联应用
     *
     * @param appId java.lang.String
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setAppId(String appId) {
        this.appId = appId == null ? null : appId.trim();
    }

    /**
     * 关联设备
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getDeviceId() {
        return deviceId;
    }

    /**
     * 关联设备
     *
     * @param deviceId java.lang.String
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId == null ? null : deviceId.trim();
    }

    /**
     * 关联ip
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getIpId() {
        return ipId;
    }

    /**
     * 关联ip
     *
     * @param ipId java.lang.String
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setIpId(String ipId) {
        this.ipId = ipId == null ? null : ipId.trim();
    }

    /**
     * 占用端口
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public Integer getPort() {
        return port;
    }

    /**
     * 占用端口
     *
     * @param port java.lang.Integer
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setPort(Integer port) {
        this.port = port;
    }

    /**
     * 是否启用
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getEnable() {
        return enable;
    }

    /**
     * 是否启用
     *
     * @param enable java.lang.String
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setEnable(String enable) {
        this.enable = enable == null ? null : enable.trim();
    }

    /**
     * 使用类型 主机 备机
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getUseType() {
        return useType;
    }

    /**
     * 使用类型 主机 备机
     *
     * @param useType java.lang.String
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setUseType(String useType) {
        this.useType = useType == null ? null : useType.trim();
    }

    /**
     * 容器类型
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getContainer() {
        return container;
    }

    /**
     * 容器类型
     *
     * @param container java.lang.String
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setContainer(String container) {
        this.container = container == null ? null : container.trim();
    }

    /**
     * 运行环境
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getEnv() {
        return env;
    }

    /**
     * 运行环境
     *
     * @param env java.lang.String
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setEnv(String env) {
        this.env = env == null ? null : env.trim();
    }

    /**
     * 部署路径
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getPath() {
        return path;
    }

    /**
     * 部署路径
     *
     * @param path java.lang.String
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setPath(String path) {
        this.path = path == null ? null : path.trim();
    }

    /**
     * 项目部署人员
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getDeployUser() {
        return deployUser;
    }

    /**
     * 项目部署人员
     *
     * @param deployUser java.lang.String
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setDeployUser(String deployUser) {
        this.deployUser = deployUser == null ? null : deployUser.trim();
    }

    /**
     * 部署时间
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getDeployTime() {
        return deployTime;
    }

    /**
     * 部署时间
     *
     * @param deployTime java.util.Date
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setDeployTime(String deployTime) {
        this.deployTime = StringUtils.isBlank(deployTime) ? null : deployTime;
    }

    /**
     * 记录创建人员
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getCreateUser() {
        return createUser;
    }

    /**
     * 记录创建人员
     *
     * @param createUser java.lang.String
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setCreateUser(String createUser) {
        this.createUser = createUser == null ? null : createUser.trim();
    }

    /**
     * 记录创建时间
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getCreateTime() {
        return createTime;
    }

    /**
     * 记录创建时间
     *
     * @param createTime java.util.Date
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setCreateTime(String createTime) {
        this.createTime = StringUtils.isBlank(createTime) ? null : createTime;
    }

    /**
     * 记录更新人员
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getUpdateUser() {
        return updateUser;
    }

    /**
     * 记录更新人员
     *
     * @param updateUser java.lang.String
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser == null ? null : updateUser.trim();
    }

    /**
     * 记录更新时间
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public String getUpdateTime() {
        return updateTime;
    }

    /**
     * 记录更新时间
     *
     * @param updateTime java.util.Date
     *
     * @mbg.generated 2017-03-01 10:11:29
     */
    public void setUpdateTime(String updateTime) {
        this.updateTime = StringUtils.isBlank(updateTime) ? null : updateTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

	public OamDevice getDev() {
		return dev;
	}

	public void setDev(OamDevice dev) {
		this.dev = dev;
	}

	public OamApp getApp() {
		return app;
	}

	public void setApp(OamApp app) {
		this.app = app;
	}

	public OamIp getIp() {
		return ip;
	}

	public void setIp(OamIp ip) {
		this.ip = ip;
	}
    
    
}