<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>角色</title>
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
		        <shiro:hasPermission name="sys:role:add"><a  onclick="addRole()"  href="#" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i>新增</a> </shiro:hasPermission>
		       <%--  <shiro:hasPermission name="sys:role:alter"><a href="javascript:ovid()" class="btn  btn-xs btn-info "><i class="glyphicon glyphicon-edit"></i>修改</a> </shiro:hasPermission>
		        <shiro:hasPermission name="sys:role:del"><a href="javascript:ovid()" class="btn  btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i>删除</a> </shiro:hasPermission> --%>
		       </span>
		     </div>
			<table id="roleTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
	</div>
	
	<!--添加角色-->
	<form class="form-horizontal clearfix" role="form" id="add_role" style="display: none;width: 95%" >
	  <input type="hidden" name="id" id="id">
	  <input type="hidden" name="createTime" id="createTime"  >
	  <div class="form-group">
	    <label for="roleName" class="col-sm-3 control-label"><span  style="color: red">*</span>角色名称:</label>
	    <div class="col-sm-6">
	      <input  class="form-control" id="roleName"   name="roleName">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="roleDesc" class="col-sm-3 control-label">显示序号:</label>
	    <div class="col-sm-6">
	      <input  class="form-control" id="roleDesc"   name="roleDesc" >
	    </div>
	  </div>
	  <!--  <div class="form-group">
	    <label for="createTime" class="col-sm-3 control-label">创建时间:</label>
	    <div class="col-sm-6">
	     <input   class="form-control laydate-icon" id="createTime" name="createTime"   >
	    </div>
	  </div> -->
	  <div class="form-group">
	    <label for="remark"  class="col-sm-3 control-label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:</label>
	    <div class="col-sm-6">
	   	 <textarea class="form-control" rows="3" name="remark"></textarea>
	    </div>
	  </div>
	</form>
</body>
</html>
<script type="text/javascript">
laydate({
    elem: '#createTime',
    event: 'focus' 
});
var oTable;
 $(function(){
		//初始化列表
	 	oTable =  $('#roleTable').DataTable( {
	        "ajax":  {
	        	"url":basePath+"role/selectRoleAll",
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
	            {"title": "角色名称",  "data": "roleName","width":"20%"},
	            {"title": "角色编号",  "data": "roleDesc","width":"15%"},
	            {"title": "创建时间",  "data": "createTime","width":"20%" },
	            {"title": "备注",  "data": "remark" },
	            {
	            	"title":"操作",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": '<a title="给角色分配权限" href="javascript:;"  onclick="allotPrivilege(this)"  class="btn   btn-xs  btn-warning" ><i class="glyphicon glyphicon-saved">权限分配</i></a>'+
	                				  '<a title="编辑" href="javascript:;"  onclick="alterRole(this)"  class="btn   btn-xs  btn-info" ><i class="glyphicon glyphicon-edit"></i></a>'+
	                    			  '<a title="删除" href="javascript:;"  onclick="delRole(this)"  class="btn   btn-xs  btn-danger" ><i class="glyphicon glyphicon-trash"></i></a>'
	            }
	        ],   
	        "columnDefs": [
	                            {
	                                "targets": [ 0 ],
	                                "visible": false,
	                                "searchable": false
	                              }
	          ],
		     "fnInitComplete": function (oSettings, json) {
		        /* $('<shiro:hasPermission name="sys:role:add">  <button type="button" class="btn btn-success btn-xs glyphicon glyphicon-plus"  onclick="addRole()" >新增</button>&nbsp; </shiro:hasPermission>' +
		          '<shiro:hasPermission name="sys:role:alter">  <button type="button" class="btn btn-info btn-xs glyphicon glyphicon-edit" onclick="editOrg()">修改</button>&nbsp;</shiro:hasPermission>' +
		          '<shiro:hasPermission name="sys:role:del">  <button type="button" class="btn btn-danger btn-xs glyphicon glyphicon-minus" onclick="delOrg()">删除</button>&nbsp;</shiro:hasPermission>'
		         ).prependTo($('#roleTable_length')); */
		     }
	    } ); 
 });
 
 function addRole(){
	 layer.open({
	        type: 1,
	        title: '添加角色',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$('#add_role'),
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$('#add_role').valid()) return false;
				 var param = $("#add_role").serialize();
				    $.ajax({
				        url : basePath+"role/add",
				        data : param,
				        type : "POST",
				        cache:false,
				        dataType : "json",
				        success: function(data){	
				        	 if(data.result == "ok"){
				        		// oTable.ajax.reload();
				        		 Msg.ok("新增成功");
				        		 layer.close(index);
				        		 window.location.reload(true);
				        	 }else{
				        		 Msg.error("新增失败");
				        	 }
				        },
				        error:function(msg){
				        	Msg.error(msg.responseText);
				        }
				    });	
			}
	    });
 }
 //修改角色
 function alterRole(obj){
	 var tr = $(obj).closest("tr");
	 var data = oTable.row(tr).data();
	 for(var attr in data){
		 $("#add_role [name='"+attr+"']").val(data[attr]);
	 }
    layer.open({
	        type: 1,
	        title: '修改角色',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$('#add_role'),
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$('#add_role').valid()) return false;
				 var param = $("#add_role").serialize();
				    $.ajax({
				        url : basePath+"role/alter",
				        data : param,
				        type : "POST",
				        cache:false,
				        dataType : "json",
				        success: function(data){	
				        	 if(data.result == "ok"){
				        		 Msg.ok("修改成功");
				        		 layer.close(index);
				        		 window.location.reload(true);
				        	 }else{
				        		 Msg.error("修改失败");
				        	 }
				        },
				        error:function(msg){
				        	Msg.error(msg.responseText);
				        }
				    });	
			}
	    });  
 }
 function delRole(obj){
	 layer.confirm('确认要删除吗？',function(index){
		 var tr = $(obj).closest("tr");
		 var data = oTable.row(tr).data();
		 $.ajax({
		        url : basePath+"role/del",
		        data : "id="+data.id,
		        type : "POST",
		        cache:false,
		        dataType : "json",
		        success: function(data){	
		        	 if(data.result == "ok"){
		        		// oTable.ajax.reload();
		        		 Msg.ok(data.message);
		        		 layer.close(index);
		        		 window.location.reload(true);
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
 $("#add_role").validate({
     rules: {
    	 roleName: {
            required: true,
            maxlength:60,
         },
         roleDesc:{
        	 number:true
         }
     }
 });
 function allotPrivilege(obj){
	 var data = oTable.row($(obj).closest("tr")).data();
	 if(!data){
		 Msg.error("请选择角色");
		 return;
	 }
	 var title = "【"+data.roleName+"】角色权限分配";
    layer.open({
	        type: 2,
	        title: title,
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , '500px'],
	        content:basePath+"menu/queryMenuTree?masteru=r&masteruId="+data.id,
			btn:['确定','取消'],
			yes:function(index,layero){	
				var nodes = window[layero.find('iframe')[0]['name']].getCheckedNodes();
				if(!nodes || nodes.length < 1){
					Msg.error("您没有选择任何权限!");
					return false;
				}
				var objs = new Array();
				for(var i = 0,len = nodes.length; i < len; i++){
					objs.push({
						id:nodes[i].id,
						pId:nodes[i].pId,
						type:nodes[i].type,
						allot:nodes[i].allot
					})
				}
				var  a = JSON.stringify(objs);
				 $.ajax({
				        url : basePath+"menu/allotRoleMenu",
				        data : {jsonNode:a,roleId:data.id},
				        type : "POST",
				        cache:false,
				        dataType : "json",
				        success: function(data){	
				        	 if(data.result == "ok"){
				        		 Msg.ok(data.message);
				        		 layer.close(index);
				        	 }else{
				        		 Msg.error(data.message);
				        	 }
				        },
				        error:function(msg){
				        	Msg.error(msg.responseText);
				        }
				    });	
			}
	    });  
 }
 
</script>


