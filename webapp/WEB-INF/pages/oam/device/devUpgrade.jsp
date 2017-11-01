<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>设备升级信息</title>
</head>

<body>
	<div class="border clearfix">
		       <span class="l_f">
		        <shiro:hasPermission name="oam:upgrade:add"><a  onclick="add()"  href="#" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i>新增</a> </shiro:hasPermission>
		       </span>
	 </div>
    <table id="oTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
	<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="addForm" style="width: 95% ;display: none;" >
	  <input type="hidden" name="id"   value="${upgrade.id}">
	  <input type="hidden" name="deviceId" id="deptId"  value="${upgrade.deviceId}">
	  <div class="form-group">
	    <label   class="col-sm-3 control-label">登录名称:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="loginName"   value="${upgrade.loginName}">
	    </div> 
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label">登录密码:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"  name="loginPassword"  value="${upgrade.loginPassword}">
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label">域名:</label>
	    <div class="col-sm-6">
	       <input  class="form-control"  name="domain"  value="${upgrade.domain}">
	    </div>
	  </div>
	   <div class="form-group">
	    <label  class="col-sm-3 control-label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:</label>
	    <div class="col-sm-6">
	   	 <textarea class="form-control" rows="3" name="remark" >${upgrade.remark}</textarea>
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
        	"url":basePath+"upgrade/selectAllPage",
        	"type" : "POST",
        	"data":function ( params ) {
        		params.deviceId="${upgrade.deviceId}";
            }
        },
        "serverSide" : true,
        "processing" : true,
        "bFilter":false,
        "bPaginate" : true,
        "oLanguage": oLanguage,
        "lengthChange": false,
        "columns": [
            {"title": "主键", "data": "id" },
            {"title": "设备ID", "data": "deviceId" },
            {"title": "登录名",  "data": "loginName"},
            {"title": "登录密码",  "data": "loginPassword" },
            {"title": "域名",  "data": "domain" },
            {"title": "备注",  "data": "remark" },
            {
            	"title":"操作",
                "class":          'td-manage',
                "orderable":      false,
                "data":           null,
                "defaultContent": 
                				  '<shiro:hasPermission name="oam:upgrade:alter"><a title="编辑" href="javascript:;"  onclick="alter(this)"  class="btn   btn-xs  btn-info" ><i class="glyphicon glyphicon-edit"></i></a></shiro:hasPermission>'+
                    			  '<shiro:hasPermission name="oam:upgrade:del"><a title="删除" href="javascript:;"  onclick="del(this)"  class="btn   btn-xs  btn-danger" ><i class="glyphicon glyphicon-trash"></i></a></shiro:hasPermission>'
            }
        ],   
        "columnDefs": [
                            {
                                "targets": [ 0,1],
                                "visible": false,
                                "searchable": false
                              }
          ]
    } ); 
 //	typeChange();
});
//表单验证
 var validator = $("#addForm").validate({
     rules: {
    	 loginName: {
             maxlength:50
          },
          loginPassword: {
        	  maxlength:50
           },
          domain: {
        	  maxlength:100
           }
     }
 });
 function add(){
	  var $form=  $("#addForm");
	 layer.open({
	        type: 1,
	        title: '添加升级信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"upgrade/add",
				        data : param,
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
				        		 Msg.error(data.message);
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
 }
 //修改
 function alter(obj){
	 var tr = $(obj).closest("tr");
	 var data = oTable.row(tr).data();
	 var $form=  $("#addForm");
	 for(var attr in data){
		 $("[name='"+attr+"']",$form).val(data[attr]);
	 }
    layer.open({
	        type: 1,
	        title: '修改升级信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"upgrade/alter",
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
				        		 Msg.error(data.message);
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
 }
 function del(obj){
	 layer.confirm('确认要删除吗？',function(index){
		 var tr = $(obj).closest("tr");
		 var data = oTable.row(tr).data();
		 $.ajax({
		        url : basePath+"upgrade/del",
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
</script>


