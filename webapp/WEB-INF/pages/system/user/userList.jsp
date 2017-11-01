<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>用户</title>
</head>

<body>
	<div class="page-content clearfix">
			<div class="administrator">
				<div class="d_Confirm_Order_style">
					<div class="search_style">
					</div>
				</div>
			</div>
			<div class="border clearfix">
		       <span class="l_f">
		        <shiro:hasPermission name="sys:user:add"><a  onclick="add()"  href="#" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i>新增</a> </shiro:hasPermission>
		       </span>
		     </div>
			<table id="oTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
	</div>
	
	<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="addForm" style="display: none;width: 95%" >
	  <input type="hidden" name="id">
	  <input type="hidden" name="deptId" id="deptId">
	  <input type="hidden" name="createTime">
	  <div class="form-group">
	    <label for="realName" class="col-sm-2 control-label"><span  style="color: red">*</span>姓名:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="realName"   >
	    </div> 
	    <label for="loginName" class="col-sm-2 control-label"><span  style="color: red">*</span>系统账号:</label>
	    <div class="col-md-4">
	      <input  class="form-control"  name="loginName"  >
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="enable" class="col-sm-2 control-label">是否启用:</label>
	    <div class="col-md-4">
	      <select  name="enable" class="form-control"  >
				<my:dict dictType="enable" defaultVal="yes"></my:dict>
		  </select>
	    </div>
	    <label for="loginName" class="col-sm-2 control-label">性别:</label>
	    <div class="col-md-4">
	      <select  name="sex" class="form-control"  >
				<my:dict dictType="sex" blank="true"></my:dict>
		  </select>
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="deptName" class="col-sm-2 control-label"><span  style="color: red">*</span>所在部门:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="deptName" placeholder="点击选择" onclick="selectDept()" id="deptName">
	    </div>
	    <label for="phone" class="col-sm-2 control-label"><span  style="color: red">*</span>联系电话:</label>
	    <div class="col-md-4">
	      <input  class="form-control"  name="phone" >
	    </div>
	  </div>
	   <div class="form-group">
	    <label for="email" class="col-sm-2 control-label">联系邮箱:</label>
	    <div class="col-md-4">
	      <input  class="form-control"  name="email" >
	    </div>
	    <label for="qq" class="col-sm-2 control-label">QQ:</label>
	    <div class="col-md-4">
	      <input  class="form-control"  name="qq" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="phone" class="col-sm-2 control-label"><span  style="color: red">*</span>所属角色:</label>
	    <div class="col-md-10" id="rolesDiv">
	        
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="remark"  class="col-sm-2 control-label">备注:</label>
	    <div class="col-md-10">
	   	 <textarea class="form-control"   name="remark"></textarea>
	    </div>
	  </div>
	</form>
</body>
</html>
<script type="text/javascript">
var oTable;
 $(function(){
		//初始化列表
	 	oTable =  $('#oTable').DataTable( {
	        "ajax":  {
	        	"url":basePath+"user/selectAll",
	        	"type" : "POST",
	        	"data":function ( params ) {
	            }
	        },
	        "serverSide" : true,
	        "processing" : true,
	        "bFilter":false,
	        "bPaginate" : true,
	        "oLanguage": oLanguage,
	        "columns": [
	            {"title": "主键", "data": "id" },
	            {"title": "性别",  "data": "sex"},
	            {"title": "部门ID", "data": "deptId" },
	            {"title": "是否启用", "data": "enable" },
	            {"title": "姓名",  "data": "realName"},
	            {"title": "系统账号",  "data": "loginName"},
	            {"title": "是否启用", "data": "enableTitle" },
	            {"title": "部门", "data": "deptName" },
	            {"title": "性别",  "data": "sexTitle"},
	            {"title": "联系电话",  "data": "phone"},
	            {"title": "邮箱",  "data": "email"},
	            {"title": "QQ",  "data": "qq"},
	            {"title": "创建时间",  "data": "createTime"},
	            {"title": "备注",  "data": "remark" },
	            {
	            	"title":"操作",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": 
	                				  '<a title="编辑" href="javascript:;"  onclick="alter(this)"  class="btn   btn-xs  btn-info" ><i class="glyphicon glyphicon-edit"></i></a>'+
	                    			  '<a title="删除" href="javascript:;"  onclick="del(this)"  class="btn   btn-xs  btn-danger" ><i class="glyphicon glyphicon-trash"></i></a>'
	            }
	        ],   
	        "columnDefs": [
	                            {
	                                "targets": [ 0,1,2,3 ],
	                                "visible": false,
	                                "searchable": false
	                              }
	          ]
	    } ); 
 });
 
 function add(){
	 var $form=  $("#addForm");
	 $.post(basePath+"role/selectRoleAll",function(result){
		     result = JSON.parse(result);
		     var data= result.data;
		     if(data.length > 0){
		    	 var rolesDiv = $("#rolesDiv");
		    	 rolesDiv.empty();
		    	 for(var i = 0,len = data.length; i < len; i++){
		    		 rolesDiv.append('<label class="middle"><input name="roles" class="ace" type="checkbox" value="'+data[i].id+'"><span class="lbl">'+data[i].roleName+'</span>&nbsp;&nbsp;</label>');
		    	 }
		     }
		 layer.open({
	        type: 1,
	        title: '添加人员信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['800px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				 var $roles =  $("#rolesDiv input:checked");
				 if($roles.length < 1){
					 Msg.error("请选择角色");
					 return false;
				 }
				    $.ajax({
				        url : basePath+"user/add",
				        data :param,
				        type : "POST",
				        cache:false,
				        dataType : "json",
				        success: function(data){	
				        	 if(data.result == "ok"){
				        		 Msg.ok("新增成功");
				        		 layer.close(index);
				        		 $form[0].reset()
				        		 oTable.ajax.reload();
				        	 }else{
				        		 Msg.error("新增失败");
				        	 }
				        },
				        error:function(msg){
				        	Msg.error(msg.responseText);
				        }
				    });	
			},
			cancel: function(index){ 
				layer.close(index); 
				$form[0].reset();
				 validator.resetForm();
			} 
	    });
	  });
 }
 //修改角色
 function alter(obj){
	 var tr = $(obj).closest("tr");
	 var data = oTable.row(tr).data();
	 var $form=  $("#addForm");
	 for(var attr in data){
		 $("[name='"+attr+"']",$form).val(data[attr]);
	 }
	 $.post(basePath+"role/selectUserRoleAndAllRole",{userId:data.id},function(result){
	     result = JSON.parse(result);
	     if(result.allRole.length > 0){
	    	 var rolesDiv = $("#rolesDiv");
	    	 rolesDiv.empty();
	    	 for(var i = 0,len = result.allRole.length; i < len; i++){
	    		 if($.inArray(result.allRole[i].id,result.userRole) > -1){
		    		rolesDiv.append('<label class="middle"><input name="roles" class="ace" type="checkbox" value="'+result.allRole[i].id+'" checked="checked"><span class="lbl">'+result.allRole[i].roleName+'</span>&nbsp;&nbsp;</label>');
	    		 }else{
	    		 	rolesDiv.append('<label class="middle"><input name="roles" class="ace" type="checkbox" value="'+result.allRole[i].id+'"><span class="lbl">'+result.allRole[i].roleName+'</span>&nbsp;&nbsp;</label>');
	    		 }
	    	 }
	     }
   		 layer.open({
	        type: 1,
	        title: '修改人员信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['800px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var $roles =  $("#rolesDiv input:checked");
				 if($roles.length < 1){
					 Msg.error("请选择角色");
					 return false;
				 }
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"user/alter",
				        data : param,
				        type : "POST",
				        cache:false,
				        dataType : "json",
				        success: function(data){	
				        	 if(data.result == "ok"){
				        		 Msg.ok("修改成功");
				        		 layer.close(index);
				        		 $form[0].reset();
				        		 oTable.ajax.reload();
				        	 }else{
				        		 Msg.error("修改失败");
				        	 }
				        },
				        error:function(msg){
				        	Msg.error(msg.responseText);
				        }
				    });	
			},
			cancel: function(index){ 
				layer.close(index); 
				$form[0].reset();
				 validator.resetForm();
			}  
	    });  
	 });
 }
 function del(obj){
	 layer.confirm('确认要删除吗？',function(index){
		 var tr = $(obj).closest("tr");
		 var data = oTable.row(tr).data();
		 $.ajax({
		        url : basePath+"user/del",
		        data : "id="+data.id,
		        type : "POST",
		        cache:false,
		        dataType : "json",
		        success: function(data){	
		        	 if(data.result == "ok"){
		        		 Msg.ok(data.message);
		        		 layer.close(index);
		        		 oTable.ajax.reload();
		        	 }else{
		        		 Msg.error(data.message);
		        	 }
		        },
		        error:function(msg){
		        	Msg.error(msg.responseText);
		        }
		    });	
	});
 }
//表单验证
 var validator = $("#addForm").validate({
     rules: {
    	 realName: {
             required: true,
             maxlength:30,
          },
    	 deptName: {
            required: true,
            maxlength:30,
         },
         loginName: {
             required: true,
             maxlength:30,
          },
          phone: {
              required: true,
              maxlength:11,
           },
         deptCode:{
        	 maxlength:11
         }
     }
 });
 //选择部门
 function selectDept(){
	 layer.open({
	        type: 2,
	        title: "选择部门",
			maxmin: true, 
			shadeClose: false, 
			 skin: 'layui-layer-rim', //加上边框
	        area : ['800px' , '500px'],
	        content:[basePath+"dept/toPublicPage","no"],
			btn:['确定','取消'],
			yes:function(index,layero){	
				var datas = window[layero.find('iframe')[0]['name']].getSelectRows();
				if(!datas || datas.length < 1){
					Msg.error("请选择部门!");
					return false;
				}
				if(datas.length > 1){
					Msg.error("只能选择一个部门!");
					return false;
				}
				$("#deptId").val(datas[0].id);
				$("#deptName").val(datas[0].deptName);
				layer.close(index);
				validator.resetForm();
			}
	    });  
 }
</script>


