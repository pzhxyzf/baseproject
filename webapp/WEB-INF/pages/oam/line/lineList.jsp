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
							 <li><label >端点名称:</label><input id="query_ddmc" type="text"  class="text_add" /></li>
							 <li><label >线路编号:</label><input id="query_lxbh" type="text"  class="text_add" /></li>
							 <li><button type="button" class="btn btn-xs  btn-primary" onclick="oTable.ajax.reload();"><i class="icon-search"></i>查询</button></li>
							 <li><button type="reset"  class="btn btn-xs  btn-info" ><i class="glyphicon glyphicon-remove-sign"></i>重置</button></li>
						</ul>
					</form>
					</div>
			<div class="border clearfix">
		       <span class="l_f">
		        <shiro:hasPermission name="oam:line:add"><a  onclick="add()"  href="#" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i>新增</a> </shiro:hasPermission>
		       </span>
		     </div>
			<table id="oTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
	</div>
		<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="addForm" style="display: none;width: 95%" >
	  <input type="hidden" name="id">
	  <div class="form-group">
	    <label   class="col-sm-3 control-label"><span  style="color: red">*</span>端点名称:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="ddmc">
	    </div>
	  </div>
	   <div class="form-group">
	    <label   class="col-sm-3 control-label">线路编号</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="lxbh"  >
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label">本端IP:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="bdip">
	    </div>
	  </div>
	   <div class="form-group">
	    <label   class="col-sm-3 control-label">对端IP及其分支名:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="ddip">
	    </div>
	  </div>
	   <div class="form-group">
	    <label   class="col-sm-3 control-label">MSTP交换机:</label>
	    <div class="col-sm-6">
	       <input  class="form-control"   name="mstpjhj">
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label">所属MSTP交换机VLAN:</label>
	    <div class="col-sm-6">
	       <input  class="form-control"   name="vlan" >
	    </div>
	  </div>
	  <div class="form-group">
		   <label   class="col-sm-3 control-label">MSTP交换机接口:</label>
		    <div class="col-sm-6">
		       <input  class="form-control"   name="jhjjk" >
		    </div>
	  </div>
	  <div class="form-group">
	    <label for="remark"  class="col-sm-3 control-label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:</label>
	    <div class="col-sm-6">
	   	 <textarea class="form-control" rows="3" name="bz" ></textarea>
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
	        	"url":basePath+"line/selectAllPage",
	        	"type" : "POST",
	        	"data":function ( params ) {
	        		params.ddmc = $("#query_ddmc").val();
	        		params.lxbh = $("#query_lxbh").val();
	            }
	        },
	        "serverSide" : true,
	        "processing" : true,
	        "bFilter":false,
	        "bPaginate" : true,
	        "oLanguage": oLanguage,
	        "columns": [
	            {"title": "主键", "data": "id" },
	            {"title": "端点名称",  "data": "ddmc"},
	            {"title": "线路编号",  "data": "lxbh"},
	            {"title": "本端IP",  "data": "bdip"},
	            {"title": "对端IP及其分支名",  "data": "ddip"},
	            {"title": "MSTP交换机",  "data": "mstpjhj"},
	            {"title": "所属MSTP交换机VLAN",  "data": "vlan"},
	            {"title": "MSTP交换机接口",  "data": "jhjjk"},
	            {"title": "备注",  "data": "bz" },
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
    	 ddmc: {
            required: true,
            maxlength:200,
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
				        url : basePath+"line/add",
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
				        url : basePath+"line/alter",
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
		        url : basePath+"line/del",
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


