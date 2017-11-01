package com.lee.system.util.tags;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;

import com.lee.system.pojo.SysDictEntry;
import com.lee.system.service.SysDictEntryService;
import com.lee.system.util.bean.BeanUtils;

/**
 * 下拉选项标签
 * @author Administrator
 *
 */
public class DictTag extends SimpleTagSupport{

	/**字典类型*/
	private String dictType;
	/**字典默认值*/
	private String defaultVal;
	/**是否允许为空*/
	private Boolean blank = false;
	/**不需要显示的值,多个用逗号隔开*/
	private String extVals;
	public void doTag() throws JspException, IOException {
	    JspWriter out = getJspContext().getOut();
	    if(StringUtils.isBlank(dictType)){
	    	  out.println("<option  value='' ></option>");
	    	  return;
	    }
	    SysDictEntryService dictEntryService = BeanUtils.getBean(SysDictEntryService.class);
	    List<SysDictEntry> list =  dictEntryService.selectCacheEntry(dictType);
	    if(CollectionUtils.isEmpty(list)){
	    	out.println("<option  value=''></option>");
	    	  return;
	    }
	    StringBuffer sb = new StringBuffer();
	    if(blank){
	    	sb.append("<option  value='' >--请选择--</option>\n");
	    }
	    if(StringUtils.isBlank(defaultVal)){
	    	if(StringUtils.isBlank(extVals)){
			    for(SysDictEntry entry : list){
			    	sb.append("<option  value='")
			    	.append(entry.getDictCode())
			    	.append("'>")
			    	.append(entry.getDictName())
			    	.append("</option>\n");
			    }
	    	}else{
	    		List<String> extValsList = extValsToList();
	    		for(SysDictEntry entry : list){
	    			if(extValsList.contains(entry.getDictCode())){
	    				continue;
	    			}
			    	sb.append("<option  value='")
			    	.append(entry.getDictCode())
			    	.append("'>")
			    	.append(entry.getDictName())
			    	.append("</option>\n");
			    }
	    	}
	    }else{
	    	if(StringUtils.isBlank(extVals)){
	    		for(SysDictEntry entry : list){
			    	sb.append("<option  value='")
			    	.append(entry.getDictCode())
			    	.append("'");
			    	if(defaultVal.equals(entry.getDictCode())){
			    		sb.append(" selected='selected'");
			    	}
			    	sb.append(">")
			    	.append(entry.getDictName())
			    	.append("</option>\n");
			    }
	    	}else{
	    		List<String> extValsList = extValsToList();
	    		for(SysDictEntry entry : list){
	    			if(extValsList.contains(entry.getDictCode())){
	    				continue;
	    			}
			    	sb.append("<option  value='")
			    	.append(entry.getDictCode())
			    	.append("'");
			    	if(defaultVal.equals(entry.getDictCode())){
			    		sb.append(" selected='selected'");
			    	}
			    	sb.append(">")
			    	.append(entry.getDictName())
			    	.append("</option>\n");
			    }
	    	}
	    	
	    }
	    out.println(sb.toString());
	}
	
	private List<String> extValsToList(){
		return Arrays.asList(extVals.split(","));
	}
	
	public void setDictType(String dictType) {
		this.dictType = dictType;
	}
	public void setDefaultVal(String defaultVal) {
		this.defaultVal = defaultVal;
	}
	public void setBlank(Boolean blank) {
		this.blank = blank;
	}
	public void setExtVals(String extVals) {
		this.extVals = extVals;
	}
	 
	
}
