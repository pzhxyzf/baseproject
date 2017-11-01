package com.lee.system.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import com.lee.system.dao.SysOrgInfoDao;
import com.lee.system.pojo.SysOrgInfo;
import com.lee.system.util.Constant;
import com.lee.system.util.base.BaseService;
import com.lee.system.util.base.ResponseMessage;
import com.lee.system.util.cache.CacheUtils;

/**
 * 机构信息
 * @author Administrator
 *
 */
@Service
public class SysOrgInfoService extends BaseService<SysOrgInfo,SysOrgInfoDao>{
	
	/**缓存根节点关键字*/
	private static final String ROOT="root";
	/**
	 * 查询并缓存机构信息
	 * @param orgInfo
	 * @return
	 */
	public List<SysOrgInfo> loadOrgTree(String id,String parentId){
		boolean isRoot = StringUtils.isEmpty(id);
		List<SysOrgInfo> parents = new ArrayList<SysOrgInfo>();
		if(isRoot){
			SysOrgInfo root = (SysOrgInfo)CacheUtils.get(CacheUtils.ORG_CACHE_NAME, ROOT);
			if(root != null){
				parents = root.getChildOrgList();
				setChilren(parents);
			}else{
				SysOrgInfo queryParent = new SysOrgInfo();
				queryParent.setParentId(id);
				parents = dao.loadOrgTree(queryParent);
				root = new SysOrgInfo();
				root.setChildOrgList(parents);
				setChilren(parents);
				CacheUtils.put(CacheUtils.ORG_CACHE_NAME, ROOT,root);
			}
			return parents;
		}
		SysOrgInfo orgCache = (SysOrgInfo)CacheUtils.get(CacheUtils.ORG_CACHE_NAME, id);
		if(orgCache != null){
			parents = orgCache.getChildOrgList();
		}else{
			SysOrgInfo queryParent = new SysOrgInfo();
			queryParent.setParentId(id);
			parents = dao.loadOrgTree(queryParent);
		}
		setChilren(parents);
		return parents;
	}
	
	/**
	 * 查看是否有叶子节点，并设置叶子节点
	 * @param parents
	 */
	private void setChilren(List<SysOrgInfo> parents){
		if(!CollectionUtils.isEmpty(parents)){
			SysOrgInfo query = new SysOrgInfo();
			List<SysOrgInfo> children = null; 
			for(SysOrgInfo org : parents){
				if(!CollectionUtils.isEmpty(org.getChildOrgList())){
					continue;
				}
				query.setParentId(org.getId());
				children = dao.loadOrgTree(query);
				if(!CollectionUtils.isEmpty(children)){
					org.setIsParent(true);
					org.setChildOrgList(children);
				}else{
					org.setIsParent(false);
				}
				CacheUtils.put(CacheUtils.ORG_CACHE_NAME, org.getId(), org);
			}
		}
	}
	
	/**
	 * 通过id查询机构信息(先从缓存中查找)
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public SysOrgInfo findOrgByKey(String id) throws Exception{
		SysOrgInfo orgCache = (SysOrgInfo)CacheUtils.get(CacheUtils.ORG_CACHE_NAME, id);
		if(orgCache == null){
			orgCache =  this.selectByPrimaryKey(id);
			if(orgCache != null)
			CacheUtils.put(CacheUtils.ORG_CACHE_NAME, orgCache.getId(), orgCache);
		}
		return orgCache;
	}

	/**
	 * 删除机构信息
	 * @param key 主键
	 * @throws Exception
	 */
	@Transactional(rollbackFor=Exception.class)
	public ResponseMessage delOrg(String key) throws Exception {
		SysOrgInfo org = this.findOrgByKey(key);
		if(org.getIsParent()){
			return new ResponseMessage(Constant.RESPONSE_SATAUS.ERROR,"该单位下存在子单位，不能删除!");
		}
		if(StringUtils.isBlank(org.getParentId())){
			//根节点
			SysOrgInfo root = (SysOrgInfo)CacheUtils.get(CacheUtils.ORG_CACHE_NAME, ROOT);
			//从父机构信息中删除缓存机构信息
			if(root != null){
				List<SysOrgInfo> parents = root.getChildOrgList();
				for(int i = 0; i < parents.size();){
					SysOrgInfo child = parents.get(i);
					if(org.getId().equals(child.getId())){
						parents.remove(child);
					}else{
						i++;
					}
				}
				CacheUtils.put(CacheUtils.ORG_CACHE_NAME, ROOT, root);
			}
		}else{
			//父节点
			SysOrgInfo parent = (SysOrgInfo)CacheUtils.get(CacheUtils.ORG_CACHE_NAME, org.getParentId());
			//从父机构信息中删除缓存机构信息
			if(parent != null){
				List<SysOrgInfo> parents = parent.getChildOrgList();
				for(int i = 0; i < parents.size();){
					SysOrgInfo child = parents.get(i);
					if(org.getId().equals(child.getId())){
						parents.remove(child);
					}else{
						i++;
					}
				}
				CacheUtils.put(CacheUtils.ORG_CACHE_NAME, ROOT, parent);
			}
		}
	    this.deleteByPrimaryKey(key);
	    CacheUtils.remove(CacheUtils.ORG_CACHE_NAME,key);
	    return new ResponseMessage();
	}

	/**
	 * 保存机构信息
	 * @param org
	 * @throws Exception 
	 */
	@Transactional(rollbackFor = Exception.class)
	public void saveOrg(SysOrgInfo org) throws Exception {
		this.insert(org);
		//添加缓存
		if(StringUtils.isBlank(org.getParentId())){
			//根节点
			SysOrgInfo root = (SysOrgInfo)CacheUtils.get(CacheUtils.ORG_CACHE_NAME, ROOT);
			//将本机构信息缓存到父机构信息的子机构中
			if(root == null){
				root = new SysOrgInfo();
				root.setIsParent(true);
			}
			root.getChildOrgList().add(org);
			CacheUtils.put(CacheUtils.ORG_CACHE_NAME, ROOT, root);
		}else{
			//将本机构信息缓存到父机构信息的子机构中
			SysOrgInfo parent =  this.findOrgByKey(org.getParentId());
			parent.getChildOrgList().add(org);
			parent.setIsParent(true);
			CacheUtils.put(CacheUtils.ORG_CACHE_NAME, parent.getId(), parent);
		}
		//缓存本机构信息
		CacheUtils.put(CacheUtils.ORG_CACHE_NAME, org.getId(), org);

	}
	
	/**
	 * 更新机构信息
	 * @param org
	 * @throws Exception
	 */
	@Transactional(rollbackFor = Exception.class)
	public void updateOrg(SysOrgInfo org) throws Exception{
		this.update(org);
		//添加缓存
		if(StringUtils.isBlank(org.getParentId())){
			//根节点
			SysOrgInfo root = (SysOrgInfo)CacheUtils.get(CacheUtils.ORG_CACHE_NAME, ROOT);
			if(root == null){
				root = new SysOrgInfo();
				root.setIsParent(true);
			}
			//更新缓存的父机构中存储的本机构信息
			List<SysOrgInfo> children = root.getChildOrgList();
			for(int i = 0 ; i < children.size(); i++){
				SysOrgInfo child = children.get(i);
				if(child.getId().equals(org.getId())){
					children.remove(child);
					children.add(org);
					break;
				}
			}
			CacheUtils.put(CacheUtils.ORG_CACHE_NAME, ROOT, root);
		}else{
			SysOrgInfo parent =  this.findOrgByKey(org.getParentId());
			if(parent != null){
				//更新缓存的父机构中存储的本机构信息
				List<SysOrgInfo> children = parent.getChildOrgList();
				for(int i = 0 ; i < children.size(); i++){
					SysOrgInfo child = children.get(i);
					if(child.getId().equals(org.getId())){
						children.remove(child);
						children.add(org);
						break;
					}
				}
				parent.setIsParent(true);
				CacheUtils.put(CacheUtils.ORG_CACHE_NAME, parent.getId(), parent);
			}
		}
		//缓存本机构信息
		CacheUtils.put(CacheUtils.ORG_CACHE_NAME, org.getId(), org);
	}
}