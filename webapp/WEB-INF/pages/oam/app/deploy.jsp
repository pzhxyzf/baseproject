<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>设备信息</title>
</head>

<body>
	<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="addForm" style="width: 95%" >
		  <input type="hidden" name="id"   value="${devApp.id}">
		  <input type="hidden" name="appId"   value="${devApp.app.id}">
		  <input type="hidden" name="deviceId"   value="${devApp.deviceId}">
		  <h4 class="header blue lighter smaller"><i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;设备信息
		  <a title="选择设备" href="javascript:;"  onclick="selectDevice()"  class="btn   btn-xs  btn-warning" ><i class="glyphicon glyphicon-plus">选择设备</i></a>&nbsp;</h4>
		  <div class="form-group">
		    <label   class="col-sm-2 control-label">设备序列号:</label>
		    <div class="col-md-4">
		      <input  class="form-control"   name="dev.serialNo"   value="${devApp.dev.serialNo}" readonly="readonly">
		    </div> 
		    <label   class="col-sm-2 control-label">固定资产编号:</label>
		    <div class="col-md-4">
		      <input  class="form-control"  name="dev.fixedNo"     value="${devApp.dev.fixedNo}"  readonly="readonly">
		    </div>
		  </div>
		  <div class="form-group">
		    <label   class="col-sm-2 control-label">型号:</label>
		    <div class="col-md-4">
		       <input  class="form-control"  name="dev.model"    value="${devApp.dev.model}"  readonly="readonly">
		    </div>
		    <label   class="col-sm-2 control-label">位置:</label>
		    <div class="col-md-4">
		    	 <input  class="form-control"  name="dev.position"     value="${devApp.dev.position}" readonly="readonly">
		    </div>
		  </div>
		   <div class="form-group">
		    <label   class="col-sm-2 control-label">设备名称:</label>
		    <div class="col-md-4">
		       <input  class="form-control"  name="dev.name"    value="${devApp.dev.name}"  readonly="readonly">
		    </div>
		    <label   class="col-sm-2 control-label">厂商:</label>
		    <div class="col-md-4">
		    	 <input  class="form-control"  name="dev.manufacturer"     value="${devApp.dev.manufacturer}" readonly="readonly">
		    </div>
		  </div>
		  <div class="form-group">
		    <label   class="col-sm-2 control-label">操作系统:</label>
		    <div class="col-md-4">
		       <input  class="form-control"  name="dev.os"    value="${devApp.dev.os}"  readonly="readonly">
		    </div>
		  </div>
		  <div class="form-group">
		    <label   class="col-sm-2 control-label">IP地址:</label>
		    <div class="col-md-4" id="ipIdDiv">
		    	<c:if test="${fn:length(devApp.dev.ips) > 0}">
		    	 	<select  name="ipId" class="form-control" >
			    		<c:forEach var="m" items="${devApp.dev.ips}"> 
			    		  <c:choose>
		  					 	 <c:when test="${m.id == devApp.ipId }">
		  					 		<option value="${m.id }" selected="selected">${m.ip}</option>
		  					 	</c:when>
		  					 	<c:otherwise> 
		  					 		<option value="${m.id }" >${m.ip}</option>
		  					 	</c:otherwise>  
		  					</c:choose>
			    		</c:forEach>
		    		</select>
		    	</c:if>
		    </div>
		    <label   class="col-sm-2 control-label">占用端口:</label>
		    <div class="col-md-4">
		    	 <input  class="form-control"  name="port"     value="${devApp.port}" number="true">
		    </div>
		  </div>
		   <h4 class="header blue lighter smaller">
		   	<i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;应用信息  
		   </h4>
		  <div class="form-group">
				    <label  class="col-sm-2 control-label">应用名称:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="app.fullName"    value="${devApp.app.fullName}" readonly="readonly">
				    </div>
				    <label   class="col-sm-2 control-label">容器类型:</label>
				    <div class="col-md-4">
					    <select  name="container" class="form-control" >
								<my:dict dictType="container" defaultVal="${devApp.container}"></my:dict>
						  </select> 
				    </div>
		  </div>
		   <div class="form-group">
				    <label   class="col-sm-2 control-label">运行环境:</label>
				    <div class="col-md-4">
					    <select  name="env" class="form-control" >
								<my:dict dictType="env" defaultVal="${devApp.env}"></my:dict>
						  </select> 
				    </div>
				    <label   class="col-sm-2 control-label">部署路径:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="path"    value="${devApp.path}">
				    </div>
		  </div>
		    <div class="form-group">
			    <label   class="col-sm-2 control-label">设备类型:</label>
			    <div class="col-md-4">
			      <select  name="useType" class="form-control">
						<my:dict dictType="sylx" defaultVal="${devApp.useType}"></my:dict>
				  </select>
			    </div>
			     <label   class="col-sm-2 control-label">是否启用:</label>
			    <div class="col-md-4">
			      <select  name="enable" class="form-control">
						<my:dict dictType="enable" defaultVal="${devApp.enable}"></my:dict>
				  </select>
			    </div>
		    </div>
		    <div class="form-group">
			    <label   class="col-sm-2 control-label">部署人员:</label>
			    <div class="col-md-4">
			       <input  class="form-control"  name="deployUser"    value="${devApp.deployUser}">
			    </div>
			     <label   class="col-sm-2 control-label">部署时间:</label>
			    <div class="col-md-4">
			       <input  class="form-control laydate-icon"  name="deployTime"    id="deployTime"    value="${devApp.deployTime}">
			    </div>
		    </div>
		    <div class="form-group">
			    <label for="remark"  class="col-sm-2 control-label">备注:</label>
			    <div class="col-md-10">
			   	 <textarea class="form-control"   name="remark"   >${devApp.remark }</textarea>
			    </div>
		    </div>
	</form>
</body>
</html>
<script type="text/javascript">
 
 laydate({
	    elem: '#deployTime',
	    event: 'focus' 
	});
//表单验证
 var validator = $("#addForm").validate({
     rules: {
    	 /* serialNo: {
             required: true,
             maxlength:50,
          },
          deptName: {
              required: true
           } */
     }
 });
 //选择设备
 function selectDevice(){
	var index =  layer.open({
	        type: 2,
	        title: "选择设备",
			maxmin: true, 
			shadeClose: false, 
			 skin: 'layui-layer-rim', //加上边框
	        area : ['1000px' , '600px'],
	        content:[basePath+"device/toPublicDev?types=yj,xlj,aly","yes"],
			btn:['确定','取消'],
			yes:function(index,layero){	
				var datas = window[layero.find('iframe')[0]['name']].getSelectRows();
				if(!datas || datas.length < 1){
					Msg.error("请选择一台设备!");
					return false;
				}
				if(datas.length > 1){
					Msg.error("只能选择一台设备!");
					return false;
				}
				var $form = $("#addForm");
				$("input[name='deviceId']",$form).val(datas[0].id);
				$("input[name='dev.serialNo']",$form).val(datas[0].serialNo);
				$("input[name='dev.fixedNo']",$form).val(datas[0].fixedNo);
				$("input[name='dev.model']",$form).val(datas[0].model);
				$("input[name='dev.position']",$form).val(datas[0].position);
				$("input[name='dev.name']",$form).val(datas[0].name);
				$("input[name='dev.manufacturer']",$form).val(datas[0].manufacturer);
				$("input[name='dev.os']",$form).val(datas[0].os);
				$("#ipIdDiv",$form).empty();
				 $.post(basePath+"ip/selectAll",{deviceId:datas[0].id},function(result){
				     result = JSON.parse(result);
				     var datas = result.data;
				     if(datas.length > 0){
				    	 var html = ' <select  name="ipId" class="form-control">';
								
				    	 for(var i = 0,len = datas.length; i < len ; i++){
				    		 html += "<option value="+datas[i].id+">"+datas[i].ip+"</option>";
				    	 }
				    	 html += '  </select>';
				    	 $("#ipIdDiv",$form).append(html);
				     }
				 });
				layer.close(index);
				validator.resetForm();
			}
	    });  
 }

 //表单校验，父页面调用
 function valid(){
	 return $('#addForm').valid();
 }
</script>


