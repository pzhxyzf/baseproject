package com.lee.system.pojo;

import java.io.Serializable;

/**
 * 数据字典明细
 * @author lee
 *
 */
public class SysDictEntry implements Serializable {
    private String dictType;

    private String dictCode;

    private String dictName;

    private Integer dictOrder;

    private String remarks;
    
    private Integer system;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table sys_dict_entry
     *
     * @mbggenerated 2016-09-17 11:23:44
     */
    private static final long serialVersionUID = 1L;

    public String getDictType() {
        return dictType;
    }

    public void setDictType(String dictType) {
        this.dictType = dictType == null ? null : dictType.trim();
    }

    public String getDictCode() {
        return dictCode;
    }

    public void setDictCode(String dictCode) {
        this.dictCode = dictCode == null ? null : dictCode.trim();
    }

    public String getDictName() {
        return dictName;
    }

    public void setDictName(String dictName) {
        this.dictName = dictName == null ? null : dictName.trim();
    }

    public Integer getDictOrder() {
        return dictOrder;
    }

    public void setDictOrder(Integer dictOrder) {
        this.dictOrder = dictOrder;
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