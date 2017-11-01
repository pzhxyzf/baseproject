package com.lee.system.util.cache;

import javax.annotation.Resource;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;


/**
 * EhCache工具类
 * @author Administrator
 *
 */
@Component
public class CacheUtils {

	private static CacheManager cacheManager;
	/**
	 * 机构缓存名称
	 */
	public static final String ORG_CACHE_NAME = "orgEhCache";
	/**
	 * 数据字典缓存名称
	 */
	public static final String DICT_CACHE_NAME = "dictEhCache";
	@Resource(name="ehCacheManager")
	public  void setCacheManager(CacheManager cacheManager) {
		CacheUtils.cacheManager = cacheManager;
	}
	/**
	 * 获得一个Cache，没有则创建一个。
	 * @param cacheName
	 * @return
	 */
	private static Cache getCache(String cacheName) {
		Cache cache = cacheManager.getCache(cacheName);
		if (cache == null) {
			cacheManager.addCache(cacheName);
			cache = cacheManager.getCache(cacheName);
			//设置数据为不失效
			cache.getCacheConfiguration().setEternal(true);
			return cache;

		}
		return cache;
	}
	
	/**
	 * 获取缓存
	 * @param cacheName
	 * @param key
	 * @return
	 */
	public static Object get(String cacheName, String key) {
		if(StringUtils.isBlank(key)){
			return null;
		}
		Cache cache = getCache(cacheName);
		//获取write锁
		cache.acquireWriteLockOnKey(key);
		try {
			Element element =cache.get(key);
			return element == null ? null : element.getObjectValue();
		} finally{
			//释放write锁
			cache.releaseWriteLockOnKey(key);
		}
		
	}
	
	/**
	 * 写入缓存
	 * @param cacheName
	 * @param key
	 * @param value
	 */
	public static void put(String cacheName, String key, Object value) {
		Cache cache = getCache(cacheName);
		cache.acquireWriteLockOnKey(key);
		try {
			cache.put(new Element(key, value));
		} finally {
			cache.releaseWriteLockOnKey(key);
		}
	}

	/**
	 * 从缓存中移除
	 * @param cacheName 缓存名称
	 * @param key 缓存关键字
	 */
	public static void remove(String cacheName, String key) {
		getCache(cacheName).remove(key);
		
	}
	
	/**
	 * 移除指定名称的缓存
	 * @param cacheName 缓存名称
	 */
	public static void removeCache(String cacheName){
		cacheManager.removeCache(cacheName);
	}
	
}
