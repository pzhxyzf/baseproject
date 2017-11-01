<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>专线资源明细</title>
</head>

<body>
	<div class="page-content clearfix">
	       <div class="search_style" >
					<form>
						<ul class="search_content clearfix">
							 <li><label >IP:</label><input id="query_ip" type="text"  class="text_add" /></li>
							 <li><label >服务器网卡:</label><input id="query_lan" type="text"  class="text_add" /></li>
							 <li><button type="button" class="btn btn-xs  btn-primary" onclick="oTable.ajax.reload();"><i class="icon-search"></i>查询</button></li>
							 <li><button type="reset"  class="btn btn-xs  btn-info" ><i class="glyphicon glyphicon-remove-sign"></i>重置</button></li>
						</ul>
					</form>
					</div>
			<div class="border clearfix">
		       <span class="l_f">
		        <shiro:hasPermission name="oam:ipport:add"><a  onclick="add()"  href="#" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i>新增</a> </shiro:hasPermission>
		       </span>
		     </div>
			<table id="oTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
	</div>
		<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="addForm" style="display: none;width: 95%" >
	  <input type="hidden" name="id">
	  <div class="form-group">
	    <label   class="col-sm-3 control-label"><span  style="color: red">*</span>IP:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="ip">
	    </div>
	  </div>
	   <div class="form-group">
	    <label   class="col-sm-3 control-label">服务器网卡</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="lan"  >
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label">交换机名称:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="swit" >
	    </div>
	  </div>
	   <div class="form-group">
	    <label   class="col-sm-3 control-label">端口号:</label>
	    <div class="col-sm-6">
	       <input  class="form-control"   name="port">
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label">显示序号:</label>
	    <div class="col-sm-6">
	       <input  class="form-control"   name="seq" number="true">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="remark"  class="col-sm-3 control-label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:</label>
	    <div class="col-sm-6">
	   	 <textarea class="form-control" rows="3" name="remark" ></textarea>
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
	        	"url":basePath+"ippport/selectAllPage",
	        	"type" : "POST",
	        	"data":function ( params ) {
	        		params.ip = $("#query_ip").val();
	        		params.lan = $("#query_lan").val();
	            }
	        },
	        "serverSide" : true,
	        "processing" : true,
	        "bFilter":false,
	        "bPaginate" : true,
	        "oLanguage": oLanguage,
	        "columns": [
	            {"title": "主键", "data": "id" },
	            {"title": "序号",  "data": "seq"},
	            {"title": "IP",  "data": "ip"},
	            {"title": "服务器网卡",  "data": "lan"},
	            {"title": "交换机名称",  "data": "swit"},
	            {"title": "端口号",  "data": "port"},
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
	                                "targets": [ 0],
	                                "visible": false,
	                                "searchable": false
	                              }
	          ]
	    } ); 
 });
 
//表单验证
 var validator = $("#addForm").validate({
     rules: {
    	 name: {
            required: true,
            maxlength:100,
         }
     }
 });
 function add(){
	 var $form=  $("#addForm");
	 layer.open({
	        type: 1,
	        title: '添加',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['800px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"ippport/add",
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
	        title: '修改',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['800px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"ippport/alter",
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
		        url : basePath+"ippport/del",
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


