<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>个人信息管理</title>
</head>

<body>
<div class="clearfix">
 	
	<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="userForm" style="width: 95%">
	  <input type="hidden" name="id" value="${user.id }" id="userId">
	  <input type="hidden" name="deptId" id="deptId" value="${user.deptId }">
	  <input type="hidden" name="enable" value="${user.enable }">
	  <input type="hidden" name="remark" value="${user.remark }">
	  <div class="form-group">
	    <label for="realName" class="col-sm-2 control-label"><span  style="color: red">*</span>姓名:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="realName"   value="${user.realName }">
	    </div> 
	    <label for="loginName" class="col-sm-2 control-label"><span  style="color: red">*</span>系统账号:</label>
	    <div class="col-md-4">
	      <input  class="form-control"  name="loginName"  value="${user.loginName}">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="loginName" class="col-sm-2 control-label">性别:</label>
	    <div class="col-md-4">
	      <select  name="sex" class="form-control"  >
				<my:dict dictType="sex" blank="true" defaultVal="${user.sex }"></my:dict>
		  </select>
	    </div>
	    <label for="loginName" class="col-sm-2 control-label">创建时间:</label>
	    <div class="col-md-4">
	      <input  class="form-control"  name="createTime"  value="${user.createTime}" readonly="readonly">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="deptName" class="col-sm-2 control-label">所在部门:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="deptName"  value="${user.deptName }" readonly="readonly">
	    </div>
	    <label for="phone" class="col-sm-2 control-label"><span  style="color: red">*</span>联系电话:</label>
	    <div class="col-md-4">
	      <input  class="form-control"  name="phone"  value="${user.phone }">
	    </div>
	  </div>
	   <div class="form-group">
	    <label for="email" class="col-sm-2 control-label">联系邮箱:</label>
	    <div class="col-md-4">
	      <input  class="form-control"  name="email"  value="${user.email }">
	    </div>
	    <label for="qq" class="col-sm-2 control-label">QQ:</label>
	    <div class="col-md-4">
	      <input  class="form-control"  name="qq"  value="${user.qq }">
	    </div>
	  </div>
	  <div class="Button_operation clearfix"> 
				<button onclick="modify();" class="btn btn-danger radius" type="button"   id="modifyBtn">修改信息</button>				
				<button onclick="saveInfo();" class="btn btn-success radius" type="button"   id="saveBtn">保存修改</button>
				<button onclick="updatePwd();" class="btn btn-warning radius" type="button" >修改密码</button>              
			</div>
	</form>
</div>
 <!--修改密码样式-->
         <div class="change_Pass_style" id="passDiv">
            <ul class="xg_style">
             <li><label class="label_name">原&nbsp;&nbsp;密&nbsp;码</label><input  type="password" class="" id="user_pas"></li>
             <li><label class="label_name">新&nbsp;&nbsp;密&nbsp;码</label><input   type="password" class="" id="Nes_pas"></li>
             <li><label class="label_name">确认密码</label><input   type="password" class="" id="c_mew_pas"></li>
            </ul>
         </div>
</body>
</html>
<script>
$(function(){
	$("#saveBtn").hide();
	$("#modifyBtn").show();
	$("#userForm input,select,remark").attr("disabled",true);
});
 //按钮点击事件
function modify(){
	$("#userForm input,select,remark").attr("disabled",false);
	$("#modifyBtn").hide();
	$("#saveBtn").show();
};
function saveInfo(){
	 var $form = $("#userForm");
	 if(!$("input[name='realName']",$form).val()){
		 Msg.error("请填写姓名");
		 return false;
	 }
	 if(!$("input[name='loginName']",$form).val()){
		 Msg.error("请填写系统账号");
		 return false;
	 } 
	 if(!$("input[name='phone']",$form).val()){
		 Msg.error("请填写联系电话");
		 return false;
	 }
	 var param = $form.serialize();
     $.ajax({
        url : basePath+"user/alterPersonal",
        data :param,
        type : "POST",
        cache:false,
        dataType : "json",
        success: function(data){	
        	 if(data.result == "ok"){
        		 Msg.ok("新增成功");
        		 $("#saveBtn").hide();
        		 $("#modifyBtn").show();
        		 $("#userForm input,select,remark").attr("disabled",true);
        	 }else{
        		 Msg.error(data.message);
        	 }
        },
        error:function(msg){
        	Msg.error(msg.responseText);
        }
    });	
}
  //修改密码
  function updatePwd(){
	  layer.open({
	    type: 1,
		title:'修改密码',
		area: ['300px','300px'],
		shadeClose: true,
		content: $('#passDiv'),
		btn:['确认修改'],
		yes:function(index, layero){	
			   var oldPwd = $("#user_pas").val();
			   if (!oldPwd){
				   Msg.error("原密码不能为空!");
				   return false;
	          } 
			   var newPwd = $("#Nes_pas").val();
			  if (!newPwd){
				  Msg.error("新密码不能为空!");
				  return false;
	          } 
			   var cPwd = $("#c_mew_pas").val();
			  if (!cPwd){
				 Msg.error("确认新密码不能为空!");
				return false;
	          }
			  if(newPwd != cPwd){ 
			    	Msg.error("密码不一致!");
				   return false;
	          }   
				 $.ajax({
				        url : basePath+"user/alterPassword",
				        data :{id:$("#userId").val(),newPassword:newPwd,oldPassword:oldPwd},
				        type : "POST",
				        cache:false,
				        dataType : "json",
				        success: function(data){	
				        	 if(data.result == "ok"){
				        		 Msg.ok("修改成功");
				        		 layer.close(index); 
				        	 }else{
				        		 Msg.error(data.message);
				        	 }
				        },
				        error:function(msg){
				        	Msg.error(msg.responseText);
				        }
				    });	
		},
		cancel: function(index){ 
			$('#passDiv input').val(null)
		}  
    });
 }
</script>
