package com.lee.system.service;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lee.system.dao.SysDictEntryDao;
import com.lee.system.pojo.SysDictEntry;
import com.lee.system.util.base.BaseService;
import com.lee.system.util.cache.DictCacheUtils;

/**
 * 数据字典明细
 * @author Administrator
 *
 */
@Service
public class SysDictEntryService extends BaseService<SysDictEntry,SysDictEntryDao>{
	 
	/**
	 * 从缓存中获取数据
	 * @param dictType 数据字典类型
	 * @param dictCode 数据字典编码
	 * @return
	 */
	public String getDictName(String dictType,String dictCode){
		if(StringUtils.isBlank(dictType)){
			return null;
		}
		if(StringUtils.isBlank(dictCode)){
			return null;
		}
		/*Map<String, Object> query = new HashMap<String, Object>();
		query.put("dictType", dictType);
		query.put("dictCode", dictCode);
		//暂时直接从数据获取
		try {
			List<SysDictEntry> list = this.selectAll(query);
			if(CollectionUtils.isNotEmpty(list)){
				return list.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		*/
		return DictCacheUtils.getDictName(dictType, dictCode);
	}
	
	/**
	 * 从缓存中获取数据
	 * @param dictType 数据字典类型
	 * @return
	 */
	public List<SysDictEntry> selectCacheEntry(String dictType){
		/*if(StringUtils.isBlank(dictType)){
			return null;
		}
		Map<String, Object> query = new HashMap<String, Object>();
		query.put("dictType", dictType);
		//暂时直接从数据获取
		try {
			return this.selectAll(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;*/
		return DictCacheUtils.getDictList(dictType);
	}
	
	@Transactional(rollbackFor=Exception.class)
	@Override
	public int insert(SysDictEntry record) throws Exception {
		DictCacheUtils.mergeDictEntry(record);
		return super.insert(record);
	}
	
	@Transactional(rollbackFor=Exception.class)
	@Override
	public int update(SysDictEntry record) throws Exception {
		DictCacheUtils.mergeDictEntry(record);
		return super.update(record);
	}
	   /**
	    * 通过主键删除数据
	    * @param pk 主键
	    * @return
	    * @throws Exception
	    */
	   @Transactional(rollbackFor=Exception.class)
	   public int deleteByPrimaryKey(Map<String, Object> pk) throws Exception{
		   DictCacheUtils.removeFromList(pk.get("dictType").toString(), pk.get("dictCode").toString());
		   return dao.deleteByPrimaryKey(pk);
	    } 
	   
}