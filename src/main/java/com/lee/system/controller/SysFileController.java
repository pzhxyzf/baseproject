package com.lee.system.controller;

import java.io.File;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.lee.system.pojo.SysFile;
import com.lee.system.service.SysDictEntryService;
import com.lee.system.service.SysFileService;
import com.lee.system.util.DictUtils;
import com.lee.system.util.base.BaseController;
import com.lee.system.util.base.ResponseMessage;

/**
 * 文件信息
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="/file")
public class SysFileController extends BaseController{
	
	@Autowired
	private SysFileService fileService;
	@Autowired
	private SysDictEntryService dictService;
	/**
	 * 分页查询列表
	 * @param parameter
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/selectAllPage")
	public Map<String,Object> selectAllPage(@RequestParam Map<String, Object> parameter){
		try {
			setParameter(parameter);
			List<SysFile>  list = fileService.selectAllPage(parameter);
			if(CollectionUtils.isNotEmpty(list)){
				for(SysFile file : list){
					if(StringUtils.isNotBlank(file.getType())){
						file.setTypeTitle(dictService.getDictName(DictUtils.Sys.FILE_TYPE,file.getType()));
					}
				}
			}
			return buildDataTablesReturn(list,parameter);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	} 
	
	/**
	 * 文件上传
	 * @param role
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/upload")
	@RequiresPermissions("sys:file:add")
	public ResponseMessage upload(@RequestParam("file") CommonsMultipartFile file,SysFile entity){
		 try {
			    StringBuffer  path = new StringBuffer(getRequest().getSession().getServletContext().getRealPath("/"));
				fileService.insert(file,path,entity);
				return okMessage("上传成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("上传失败");
		}
	}
	
	/**
	 * 修改
	 * @param role
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/alter")
	@RequiresPermissions("sys:file:alter")
	public ResponseMessage alter(SysFile entity){
		 try {
			fileService.update(entity);
			return okMessage("修改成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("修改失败");
		}
	}
	/**
	 * 文件下载
	 * @param id
	 * @return
	 * @throws Exception
	 */
	/*//因为配置了FastJsonHttpMessageConverte,这种方式会导致下载文件内容出错
	@RequestMapping(value = "download")  
	public ResponseEntity<byte[]>  download(String id) throws Exception{  
	    SysFile sysFile = fileService.selectByPrimaryKey(id);
	    String fileName = sysFile.getName(); 
	    fileName = URLEncoder.encode(fileName, "UTF-8");  
	    File file = new File(sysFile.getRemark());
	    HttpHeaders headers = new HttpHeaders();    
        headers.setContentDispositionFormData("attachment", fileName);   
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);   
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
                                          headers, HttpStatus.CREATED);    
	}  */
	
	/**
	 * 文件下载
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "download")  
	public void download(String id,HttpServletResponse response) throws Exception{  
	    SysFile sysFile = fileService.selectByPrimaryKey(id);
	    String fileName = sysFile.getName(); 
	    fileName = URLEncoder.encode(fileName, "UTF-8");  
	    File file = new File(sysFile.getPath());
	    if(file == null || !file.exists()){
	    	return;
	    }
	    OutputStream out = null;
	    try {
			response.reset();
			response.setContentType("application/octet-stream; charset=utf-8"); 
			response.setHeader("Content-Disposition", "attachment; filename=" + fileName); 
			out = response.getOutputStream(); 
			out.write(FileUtils.readFileToByteArray(file)); 
			out.flush();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(out != null){
				out.close();
			}
		}
	}  
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/del")
	@RequiresPermissions("sys:file:del")
	public ResponseMessage del(String id){
		 try {
			if(StringUtils.isBlank(id)){
				return errorMessage("请选择需要删除记录");
			}
			fileService.deleteByPrimaryKey(id);
			return okMessage("删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return errorMessage("删除失败");
		}
	}
}
