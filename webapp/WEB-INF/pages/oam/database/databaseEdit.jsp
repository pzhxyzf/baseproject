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
		  <input type="hidden" name="id"   value="${database.id}">
		  <input type="hidden" name="appId" id="appId"  value="${database.appId}">
		  <input type="hidden" name="deviceId"   value="${database.deviceId}">
		  <h4 class="header blue lighter smaller"><i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;设备信息
		  <c:if test="${opt ne  'detail'}"><a title="选择设备" href="javascript:;"  onclick="selectDevice()"  class="btn   btn-xs  btn-warning" ><i class="glyphicon glyphicon-plus">选择设备</i></a></c:if>&nbsp;</h4>
		  <div class="form-group">
		    <label   class="col-sm-2 control-label">设备序列号:</label>
		    <div class="col-md-4">
		      <input  class="form-control"   name="dev.serialNo"   value="${database.dev.serialNo}" readonly="readonly">
		    </div> 
		    <label   class="col-sm-2 control-label">固定资产编号:</label>
		    <div class="col-md-4">
		      <input  class="form-control"  name="dev.fixedNo"     value="${database.dev.fixedNo}"  readonly="readonly">
		    </div>
		  </div>
		  <div class="form-group">
		    <label   class="col-sm-2 control-label">型号:</label>
		    <div class="col-md-4">
		       <input  class="form-control"  name="dev.model"    value="${database.dev.model}"  readonly="readonly">
		    </div>
		    <label   class="col-sm-2 control-label">位置:</label>
		    <div class="col-md-4">
		    	 <input  class="form-control"  name="dev.position"     value="${database.dev.position}" readonly="readonly">
		    </div>
		  </div>
		   <div class="form-group">
		    <label   class="col-sm-2 control-label">设备名称:</label>
		    <div class="col-md-4">
		       <input  class="form-control"  name="dev.name"    value="${database.dev.name}"  readonly="readonly">
		    </div>
		    <label   class="col-sm-2 control-label">厂商:</label>
		    <div class="col-md-4">
		    	 <input  class="form-control"  name="dev.manufacturer"     value="${database.dev.manufacturer}" readonly="readonly">
		    </div>
		  </div>
		  <div class="form-group">
		    <label   class="col-sm-2 control-label">IP地址:</label>
		    <div class="col-md-4" id="ipIdDiv">
		    	<c:if test="${fn:length(database.dev.ips) > 0}">
		    	 	<select  name="ipId" class="form-control" >
			    		<c:forEach var="m" items="${database.dev.ips}"> 
			    		  <c:choose>
		  					 	 <c:when test="${m.id == database.ipId }">
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
		    	 <input  class="form-control"  name="port"     value="${database.port}" number="true">
		    </div>
		  </div>
		   <h4 class="header blue lighter smaller">
		   	<i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;数据库信息  
		   </h4>
		  <div class="form-group">
				    <label  class="col-sm-2 control-label">数据库类型:</label>
				    <div class="col-md-4">
				      	<select  name="databaseType" class="form-control" >
								<my:dict dictType="dbtype" defaultVal="${database.databaseType}"></my:dict>
						  </select>
				    </div>
				    <label   class="col-sm-2 control-label">实例名称:</label>
				    <div class="col-md-4">
					     <input  class="form-control"  name="sid"    value="${database.sid}">
				    </div>
		  </div>
		   <div class="form-group">
				    <label   class="col-sm-2 control-label">表空间名:</label>
				    <div class="col-md-4">
					   <input  class="form-control"  name="spaceData"    value="${database.spaceData}">
				    </div>
				    <label   class="col-sm-2 control-label">临时表空间:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="spaceTemp"    value="${database.spaceTemp}">
				    </div>
		  </div>
		    <div class="form-group">
			    <label   class="col-sm-2 control-label">安装包(服务器):</label>
			    <div class="col-md-4">
			     <input  class="form-control"  name="softServer"    value="${database.softServer}">
			    </div>
			     <label   class="col-sm-2 control-label">安装包(客户端):</label>
			    <div class="col-md-4">
			      <input  class="form-control"  name="softClient"    value="${database.softClient}">
			    </div>
		    </div>
		    <div class="form-group">
			    <label   class="col-sm-2 control-label">安装人员:</label>
			    <div class="col-md-4">
			       <input  class="form-control"  name="installUser"    value="${database.installUser}">
			    </div>
			     <label   class="col-sm-2 control-label">安装时间:</label>
			    <div class="col-md-4">
			       <input  class="form-control laydate-icon"  name="installTime"    id="installTime"    value="${database.installTime}">
			    </div>
		    </div>
		    <div class="form-group">
				    <label  class="col-sm-2 control-label">应用名称:</label>
				    <div class="col-md-4">
				      	<input  class="form-control"  name="app.fullName"  id="appFullName"   value="${database.app.fullName}" placeholder="点击选择" onclick="selectApp()" >
				    </div>
				     <label  class="col-sm-2 control-label">主备:</label>
				    <div class="col-md-4">
				      		<select  name="useType" class="form-control" >
								<my:dict dictType="sylx" defaultVal="${database.useType}"></my:dict>
						   </select>
					</div>
		   </div>
		    <div class="form-group">
			    <label for="remark"  class="col-sm-2 control-label">备注:</label>
			    <div class="col-md-10">
			   	 <textarea class="form-control"   name="remark"   >${database.remark }</textarea>
			    </div>
		    </div>
		<div id="userDiv">
		   <h4 class="header blue lighter smaller">
		   	<i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;用户信息  
		   	<c:if test="${opt ne  'detail'}">
		    <a title="添加数据库用户" href="javascript:;"  onclick="addUser()"  class="btn   btn-xs  btn-warning" ><i class="glyphicon glyphicon-plus">添加用户</i></a>&nbsp;
		  	</c:if>
		   </h4>
		  
		  <c:choose>
		   	<c:when test="${fn:length(database.users) > 0}">
		   	    <c:forEach var="m" items="${database.users}"> 
		  			<div name="userGroup">
		  				<input  type="hidden" name="users.id" value="${m.id }">
		  				<input  type="hidden" name="users.databaseId" value="${m.databaseId}">
						  <div class="form-group">
								    <label   class="col-sm-2 control-label"><c:if test="${opt ne  'detail'}"><button type="button" class="btn btn-link" onclick="delUser(this)">删除</button></c:if>用户名称:</label>
								    <div class="col-md-4">
								      <input  class="form-control"  name="users.username" value="${m.username }">
								    </div>
								    <label   class="col-sm-2 control-label">用户密码:</label>
								    <div class="col-md-4">
									    <input  class="form-control"  name="users.userpd" value="${m.userpd }">
								    </div>
						  </div>	
						  <div class="form-group">
								    <label class="col-sm-2 control-label">角色:</label>
								    <div class="col-md-4">
								      <select  name="users.role" class="form-control" >
											<my:dict dictType="dbrole" defaultVal="${m.role }"></my:dict>
									  </select>
								    </div>
								     <label class="col-sm-2 control-label">描述:</label>
								    <div class="col-md-4">
								      <input  class="form-control"  name="users.remark"  value="${m.remark }">
								    </div>
						  </div>  
				  </div>
		  		</c:forEach>
  			</c:when>
  			<c:otherwise>  
				<div name="userGroup">
						  <div class="form-group">
								    <label   class="col-sm-2 control-label"><button type="button" class="btn btn-link" onclick="delUser(this)">删除</button>用户名称:</label>
								    <div class="col-md-4">
								      <input  class="form-control"  name="users.username" >
								    </div>
								    <label   class="col-sm-2 control-label">用户密码:</label>
								    <div class="col-md-4">
									    <input  class="form-control"  name="users.userpd">
								    </div>
						  </div>	
						  <div class="form-group">
								    <label class="col-sm-2 control-label">角色:</label>
								    <div class="col-md-4">
								      <select  name="users.role" class="form-control" >
											<my:dict dictType="dbrole"></my:dict>
									  </select>
								    </div>
								     <label class="col-sm-2 control-label">描述:</label>
								    <div class="col-md-4">
								      <input  class="form-control"  name="users.remark" >
								    </div>
						  </div>  
				  </div>
  			</c:otherwise>
		  </c:choose>  
	  </div>
	</form>
	<div style="visibility: hidden;" id="dbRoleDiv">
		<select  name="users.role" class="form-control" >
				<my:dict dictType="dbrole"></my:dict>
		 </select>
	</div>
</body>
</html>
<script type="text/javascript">
 
 laydate({
	    elem: '#installTime',
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
 //添加用户
 function addUser(){
	 var roles = $("#dbRoleDiv").html();
	 var html = '<div name="userGroup">'+
					  '<div class="form-group">'+
				    '<label   class="col-sm-2 control-label"><button type="button" class="btn btn-link" onclick="delUser(this)">删除</button>用户名称:</label>'+
				    '<div class="col-md-4">'+
				     ' <input  class="form-control"  name="users.username" >'+
				    '</div>'+
				    '<label   class="col-sm-2 control-label">用户密码:</label>'+
				    '<div class="col-md-4">'+
					 '   <input  class="form-control"  name="users.userpd">'+
				    '</div>'+
			'</div>	'+
			'<div class="form-group">'+
			'	    <label class="col-sm-2 control-label">角色:</label>'+
			'	    <div class="col-md-4">'+
			 		roles+
			'	    </div>'+
			'	     <label class="col-sm-2 control-label">描述:</label>'+
			'	    <div class="col-md-4">'+
			'	      <input  class="form-control"  name="users.remark" >'+
			'	    </div>'+
			'</div>  '+
			'</div>';
	$("#userDiv").append(html);
 }
 
 //删除添加的user
 function delUser(obj){
	var userGroup = $(obj).closest("div[name='userGroup']");
	var userId = userGroup.find("input[name='users.id']").val();
	if(userId){
		layer.confirm('该用户已经保存在数据库中,删除后将不可恢复，确认要删除吗？',function(index){
			$.ajax({
		        url : basePath+"database/delUser",
		        data :"id="+userId,
		        type : "POST",
		        cache:false,
		        dataType : "json",
		        success: function(data){	
		        	 if(data.result == "ok"){
		        		 Msg.ok("删除成功");
		        		 userGroup.remove(); 
		        	 }else{
		        		 Msg.error("删除失败");
		        	 }
		        },
		        error:function(msg){
		        	Msg.error(msg.responseText);
		        }
		    });	  
		});
	}else{
		userGroup.remove(); 
	}
 }
 
//选择应用
 function selectApp(){
	 layer.open({
	        type: 2,
	        title: "选择应用",
			maxmin: true, 
			shadeClose: false, 
			 skin: 'layui-layer-rim', //加上边框
	        area : ['1000px' , '600px'],
	        content:[basePath+"menu/toAny?path=oam/app/publicApp","yes"],
			btn:['确定','取消'],
			yes:function(index,layero){	
				var datas = window[layero.find('iframe')[0]['name']].getSelectRows();
				if(!datas || datas.length < 1){
					Msg.error("请选择应用!");
					return false;
				}
				if(datas.length > 1){
					Msg.error("只能选择一个应用!");
					return false;
				}
				$("#appId").val(datas[0].id);
				$("#appFullName").val(datas[0].fullName);
				layer.close(index);
			}
	    });  
 }
</script>


