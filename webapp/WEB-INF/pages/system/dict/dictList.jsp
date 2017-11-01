<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>部门</title>
</head>

<body>
	<div class="page-content clearfix">
			<div class="search_style" >
					<ul class="search_content clearfix">
						 <li><label class="l_f">类型编码</label><input id="queryDictType" type="text"  class="text_add" placeholder="类型编码"/></li>
						 <li><label class="l_f">类型名称</label><input id="queryDictDesc" type="text"  class="text_add" placeholder="类型名称"/></li>
						 <li style="width:90px;"><button type="button" class="btn_search" onclick="oTable.ajax.reload();mxTable.ajax.reload();"><i class="icon-search"></i>查询</button></li>
					</ul>
			</div>
			<div class="border clearfix">
		       <span class="l_f">
		        <shiro:hasPermission name="sys:dictType:add"><a  onclick="add()"  href="#" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i>新增</a> </shiro:hasPermission>
		       </span>
		     </div>
			<table id="oTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
			<table id="mxTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>

	</div>
	
	<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="addForm" style="display: none;width: 95%" >
	  <div class="form-group">
	    <label  class="col-sm-3 control-label"><span  style="color: red">*</span>类型编码:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="dictType">
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label"><span  style="color: red">*</span>类型名称:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"    name="dictDesc" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label    class="col-sm-3 control-label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:</label>
	    <div class="col-sm-6">
	   	 <textarea class="form-control" rows="3" name="remarks"></textarea>
	    </div>
	  </div>
	</form>
	
		<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="addMXForm" style="display: none;width: 95%" >
	  <div class="form-group">
	    <label  class="col-sm-3 control-label"><span  style="color: red">*</span>类型编码:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="dictType" readonly="readonly">
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label"><span  style="color: red">*</span>字典编码:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"    name="dictCode" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label"><span  style="color: red">*</span>字典名称:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"    name="dictName" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label">显示序号:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"    name="dictOrder" number="true">
	    </div>
	  </div>
	  <div class="form-group">
	    <label    class="col-sm-3 control-label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:</label>
	    <div class="col-sm-6">
	   	 <textarea class="form-control" rows="3" name="remarks"></textarea>
	    </div>
	  </div>
	</form>
</body>
</html>
<script type="text/javascript">
var oTable;
var mxTable;
var dictType = "xxxxx";
 $(function(){
		//初始化列表
	 	oTable =  $('#oTable').DataTable( {
	        "ajax":  {
	        	"url":basePath+"dict/selectAllTypePage",
	        	"type" : "POST",
	        	"data":function ( params ) {
	        		params.dictType = $("#queryDictType").val();
	        		params.dictDesc = $("#queryDictDesc").val();
	            }
	        },
	        "serverSide" : true,
	        "processing" : true,
	        "bFilter":false,
	        "bPaginate" : true,
	        "oLanguage": oLanguage,
	        "lengthChange": false,
	        "iDisplayLength":5,
	        "columns": [
	            {"title": "类型编码", "data": "dictType" },
	            {"title": "类型名称",  "data": "dictDesc"},
	            {"title": "备注",  "data": "remarks" },
	            {
	            	"title":"操作",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": 
      				  				  '<a title="添加字典明细" href="javascript:;"  onclick="addMX(this)"  class="btn   btn-xs  btn-warning" ><i class="glyphicon glyphicon-plus"></i></a>'+
	                				  '<a title="编辑" href="javascript:;"  onclick="alter(this)"  class="btn   btn-xs  btn-info" ><i class="glyphicon glyphicon-edit"></i></a>'+
	                    			  '<a title="删除" href="javascript:;"  onclick="del(this)"  class="btn   btn-xs  btn-danger" ><i class="glyphicon glyphicon-trash"></i></a>'
	            }
	        ]
	    } ); 
		//初始化列表
	 	mxTable =  $('#mxTable').DataTable( {
	        "ajax":  {
	        	"url":basePath+"dict/selectAllEntryPage",
	        	"type" : "POST",
	        	"data":function ( params ) {
	        		params.dictType = dictType;
	            }
	        },
	        "serverSide" : true,
	        "processing" : true,
	        "bFilter":false,
	        "bPaginate" : true,
	        "oLanguage": oLanguage,
	        "lengthChange": false,
	        "iDisplayLength":5,
	        "columns": [
	            {"title": "类型编码", "data": "dictType" },
	            {"title": "字典编码",  "data": "dictCode"},
	            {"title": "字典名称",  "data": "dictName"},
	            {"title": "显示序号",  "data": "dictOrder"},
	            {"title": "备注",  "data": "remarks" },
	            {
	            	"title":"操作",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": 
	                				  '<a title="编辑" href="javascript:;"  onclick="alterMX(this)"  class="btn   btn-xs  btn-info" ><i class="glyphicon glyphicon-edit"></i></a>'+
	                    			  '<a title="删除" href="javascript:;"  onclick="delMX(this)"  class="btn   btn-xs  btn-danger" ><i class="glyphicon glyphicon-trash"></i></a>'
	            }
	        ]
	    } ); 
	 	 $('#oTable tbody').on( 'click', 'tr', function () {
	 		 var data = oTable.row(this).data();
	 		dictType = data.dictType;
	 		 mxTable.ajax.reload();
	     } );
 });
 
 function add(){
	 var $form=  $("#addForm");
	 layer.open({
	        type: 1,
	        title: '添加类型',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"dict/typeAdd",
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
 function addMX(obj){
	 var tr = $(obj).closest("tr");
	 var data = oTable.row(tr).data();
	 var $form=  $("#addMXForm");
	 $("input[name='dictType']",$form).val(data.dictType);
	 layer.open({
	        type: 1,
	        title: '添加明细',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"dict/entryAdd",
				        data : param,
				        type : "POST",
				        cache:false,
				        dataType : "json",
				        success: function(data){	
				        	 if(data.result == "ok"){
				        		 Msg.ok("新增成功");
				        		 layer.close(index);
				        		 $form[0].reset()
				        		 mxTable.ajax.reload();
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
 function alter(obj){
	 var tr = $(obj).closest("tr");
	 var data = oTable.row(tr).data();
	 var $form=  $("#addForm");
	 for(var attr in data){
		 $("[name='"+attr+"']",$form).val(data[attr]);
	 }
	 $("[name='dictType']",$form).attr("readonly","readonly"); 
    layer.open({
	        type: 1,
	        title: '修改类型',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"dict/typeAlter",
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
			}
	    });  
 }
//修改角色
 function alterMX(obj){
	 var tr = $(obj).closest("tr");
	 var data = mxTable.row(tr).data();
	 var $form=  $("#addMXForm");
	 for(var attr in data){
		 $("[name='"+attr+"']",$form).val(data[attr]);
	 }
    layer.open({
	        type: 1,
	        title: '修改明细',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"dict/entryAlter",
				        data : param,
				        type : "POST",
				        cache:false,
				        dataType : "json",
				        success: function(data){	
				        	 if(data.result == "ok"){
				        		 Msg.ok("修改成功");
				        		 layer.close(index);
				        		 $form[0].reset();
				        		 mxTable.ajax.reload();
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
 function del(obj){
	 layer.confirm('确认要删除吗？',function(index){
		 var tr = $(obj).closest("tr");
		 var data = oTable.row(tr).data();
		 $.ajax({
		        url : basePath+"dict/typeDel",
		        data : "id="+data.dictType,
		        type : "POST",
		        cache:false,
		        dataType : "json",
		        success: function(data){	
		        	 if(data.result == "ok"){
		        		 Msg.ok(data.message);
		        		 layer.close(index);
		        		 oTable.ajax.reload();
		        		 mxTable.ajax.reload();
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
 function delMX(obj){
	 layer.confirm('确认要删除吗？',function(index){
		 var tr = $(obj).closest("tr");
		 var data = mxTable.row(tr).data();
		 $.ajax({
		        url : basePath+"dict/entryDel",
		        data : "dictType="+data.dictType+"&dictCode="+data.dictCode,
		        type : "POST",
		        cache:false,
		        dataType : "json",
		        success: function(data){	
		        	 if(data.result == "ok"){
		        		 Msg.ok(data.message);
		        		 layer.close(index);
		        		 mxTable.ajax.reload();
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
 $("#addForm").validate({
     rules: {
    	 dictType: {
            required: true,
            maxlength:10,
         },
         dictDesc:{
        	 required: true,
        	 maxlength:100
         }
     }
 });
 $("#addMXForm").validate({
     rules: {
    	 dictType: {
            required: true,
            maxlength:10,
         },
         dictCode:{
        	 required: true,
        	 maxlength:100
         },
         dictName:{
        	 required: true,
        	 maxlength:100
         }
     }
 });
</script>


