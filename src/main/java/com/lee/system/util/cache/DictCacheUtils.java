package com.lee.system.util.cache;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;

import com.google.common.collect.Lists;
import com.lee.system.pojo.SysDictEntry;
import com.lee.system.service.SysDictEntryService;
import com.lee.system.util.bean.SpringContextHolder;

/**
 * 数据字典缓存信息
 * @author Administrator
 *
 */
public class DictCacheUtils {

	private static SysDictEntryService dictEntryService =  SpringContextHolder.getBean(SysDictEntryService.class);
	/**缓存的数据字典关键字*/
	public static final String DICT_CACHE = "dictCacheKey";
	

	/**
	 * 
	 * 获取指定编码串的值
	 * @param codes
	 * @param type
	 * @return
	 */
	public static String getDictNames(String codes, String type){
		if (StringUtils.isNotBlank(type) && StringUtils.isNotBlank(codes)){
			List<String> valueList = new ArrayList<String>();
			for (String code : StringUtils.split(codes, ",")){
				valueList.add(getDictName(code, type));
			}
			return StringUtils.join(valueList, ",");
		}
		
		return "";
	}
	
	
	/**
	 * 获取字典值
	 * @param code
	 * @param type
	 * @see DictUtils.getDictValue(info.getStatus(),"D00026");
	 * @return
	 */
	public static String getDictName(String dictType, String dictCode){
		if (StringUtils.isNotBlank(dictType) && StringUtils.isNotBlank(dictCode)){
			List<SysDictEntry>  list =  getDictList(dictType);
			for (SysDictEntry dict : list){
				if (dictType.equals(dict.getDictType()) && dictCode.equals(dict.getDictCode())){
					return dict.getDictName();
				}
			}
		}
		
		return "";
	}
	
	/**
	 * 获取字典列表
	 * @param dictType 字典类型
	 * @return
	 */
	public static List<SysDictEntry> getDictList(String dictType){
		@SuppressWarnings("unchecked")
		List<SysDictEntry> list = (List<SysDictEntry>)CacheUtils.get(DICT_CACHE,dictType);
		if(CollectionUtils.isEmpty(list)){
			SysDictEntry query = new SysDictEntry();
			query.setDictType(dictType);
			try {
				list = dictEntryService.selectAll(query);
			} catch (Exception e) {
				e.printStackTrace();
			}
			if(list == null){
				list = Lists.newArrayList();
			}
			CacheUtils.put(DICT_CACHE, dictType, list);
		}
		return list;
	}
	
	/**
	 * 更新字典内容
	 * 
	 * 当指定字典已经缓存的时候（调用equals方法），则更新，反之添加
	 * 
	 * 更新字典项
	 * @param dictEntry
	 */
	public static void mergeDictEntry(SysDictEntry dictEntry){
		String dictType = dictEntry.getDictType();
		String dictCode = dictEntry.getDictCode();
		if(StringUtils.isBlank(dictType) || StringUtils.isBlank(dictCode))
			return;
		List<SysDictEntry> list = getDictList(dictEntry.getDictType());
		boolean find = false;
		for(int i = 0,len = list.size(); i < len; i++){
			if(dictCode.equals(list.get(i).getDictCode())){
				list.add(i, dictEntry);
				find = true;
				break;
			}
		}
		if(!find)
			list.add(dictEntry);
		CacheUtils.put(DICT_CACHE, dictType, list); 
	}
	
	/**
	 * 
	 * 移除字典项
	 * @return
	 */
	public static void removeFromList(String dictType,String dictCode){
		if(StringUtils.isBlank(dictType) || StringUtils.isBlank(dictCode))
			return;
		List<SysDictEntry> list = getDictList(dictType);
		boolean find = false;
		for(int i = 0,len = list.size(); i < len; i++){
			if(dictCode.equals(list.get(i).getDictCode())){
				list.remove(i);
				find = true;
				break;
			}
		}
		if(find){
			CacheUtils.put(DICT_CACHE, dictType, list); 
		}
	}
	
	/**
	 * 删除缓存
	 * @param dictType
	 */
	public static void removeList(String dictType){
		CacheUtils.remove(DICT_CACHE, dictType);
	}
}
