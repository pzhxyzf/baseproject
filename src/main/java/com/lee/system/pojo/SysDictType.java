package com.lee.system.pojo;

import java.io.Serializable;

/**
 * 数据字典类型
 * @author lee
 *
 */
public class SysDictType implements Serializable {
    private String dictType;

    private String dictDesc;

    private String remarks;

    private Integer system;
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table sys_dict_type
     *
     * @mbggenerated 2016-09-17 11:18:32
     */
    private static final long serialVersionUID = 1L;

    public String getDictType() {
        return dictType;
    }

    public void setDictType(String dictType) {
        this.dictType = dictType == null ? null : dictType.trim();
    }

    public String getDictDesc() {
        return dictDesc;
    }

    public void setDictDesc(String dictDesc) {
        this.dictDesc = dictDesc == null ? null : dictDesc.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

	public Integer getSystem() {
		return system;
	}

	public void setSystem(Integer system) {
		this.system = system;
	}
    
}