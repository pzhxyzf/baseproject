package com.lee.system.dao;

import java.util.Map;

import com.lee.system.pojo.SysDictEntry;
import com.lee.system.util.annotation.MyBatisDao;
import com.lee.system.util.base.BaseDao;

/**
 * 数据字典类型
 * @author lee
 *
 */
@MyBatisDao
public interface SysDictEntryDao   extends BaseDao<SysDictEntry>{
	
	public int deleteByType(String dictType);
	public int deleteByPrimaryKey(Map<String, Object> map);
}