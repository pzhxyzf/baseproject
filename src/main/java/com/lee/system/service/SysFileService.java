package com.lee.system.service;

import java.io.File;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.lee.system.dao.SysFileDao;
import com.lee.system.pojo.SysFile;
import com.lee.system.shiro.ShiroUtils;
import com.lee.system.util.DateUtil;
import com.lee.system.util.UuidUtil;
import com.lee.system.util.base.BaseService;

/**
 * 文件上传
 * @author Administrator
 *
 */
@Service
public class SysFileService extends BaseService<SysFile,SysFileDao>{

	/**
	 * 上传文件
	 * @param file
	 * @param path
	 * @throws Exception 
	 */
	@Transactional(rollbackFor=Exception.class)
	public void insert(CommonsMultipartFile file, StringBuffer path,SysFile entity) throws Exception {
		    String fileName = file.getOriginalFilename();
	        path.append("files").append(File.separator).append(DateUtil.getDay()).append(File.separator);
	        File dir = new File(path.toString());
	        // 创建文件夹
	        if (!dir.exists()) {
	        	dir.mkdirs();
	        }
	        String type = "";
	        try{
	        	int index = fileName.lastIndexOf(".");
	        	type =  fileName.substring(index);
	        }catch(Exception e){
	        	 
	        }
	        String uuid = UuidUtil.get32UUID();
	        path.append(uuid).append(type);
	        File newFile=new File(path.toString());
	        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
	        file.transferTo(newFile);
			entity.setId(uuid);
			entity.setName(fileName);
			entity.setUpuser(ShiroUtils.getLoingUserName());
			entity.setUptime(DateUtil.getTime());
			entity.setPath(path.toString());
			super.insert(entity);
	}
	
	@Transactional(rollbackFor=Exception.class)
	@Override
	public int deleteByPrimaryKey(String pk) throws Exception {
		SysFile file = this.selectByPrimaryKey(pk);
		if(StringUtils.isNotBlank(file.getPath())){
			File newFile = new File(file.getPath());
			if(newFile.exists()){
				newFile.delete();
			}
		}
		return super.deleteByPrimaryKey(pk);
	}
}