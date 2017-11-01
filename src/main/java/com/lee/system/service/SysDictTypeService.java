package com.lee.system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lee.system.dao.SysDictEntryDao;
import com.lee.system.dao.SysDictTypeDao;
import com.lee.system.pojo.SysDictType;
import com.lee.system.util.base.BaseService;
import com.lee.system.util.cache.DictCacheUtils;

/**
 * 数据字典类型
 * @author Administrator
 *
 */
@Service
public class SysDictTypeService extends BaseService<SysDictType,SysDictTypeDao>{
	 
	@Autowired
	private SysDictEntryDao entryDao;
	
	/**
	 * 删除字典类型和明细
	 * @param typeId
	 */
	@Transactional
	public void deleteDict(String dictType){
		DictCacheUtils.removeList(dictType);
		entryDao.deleteByType(dictType);
		dao.deleteByPrimaryKey(dictType);
	}
}