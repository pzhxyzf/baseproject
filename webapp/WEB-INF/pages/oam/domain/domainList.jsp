<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>设备信息</title>
</head>

<body>
	<div class="page-content clearfix">
	       <div class="search_style" >
					<form>
						<ul class="search_content clearfix">
							 <li><label >域名:</label><input id="query_domain" type="text"  class="text_add" /></li>
							 <li><label >域名商 :</label><input id="query_domainBus" type="text"  class="text_add" /></li>
							 <li><button type="button" class="btn btn-xs  btn-primary" onclick="oTable.ajax.reload();"><i class="icon-search"></i>查询</button></li>
							 <li><button type="reset"  class="btn btn-xs  btn-info" ><i class="glyphicon glyphicon-remove-sign"></i>重置</button></li>
						</ul>
					</form>
					</div>
			<div class="border clearfix">
		       <span class="l_f">
		        <shiro:hasPermission name="oam:domain:add"><a  onclick="add()"  href="#" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i>新增</a> </shiro:hasPermission>
		       </span>
		     </div>
			<table id="oTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
	</div>
		<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="addForm" style="display: none;width: 95%" >
	  <input type="hidden" name="id">
	  <div class="form-group">
	    <label   class="col-sm-2 control-label"><span  style="color: red">*</span>域名:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="domain">
	    </div>
	    <label   class="col-sm-2 control-label">到期时间:</label>
	    <div class="col-md-4">
	      <input  class="form-control laydate-icon"   name="endTime"  id="endTime">
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-2 control-label"><span  style="color: red">*</span>公网IP:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="ip">
	    </div>
	    <label   class="col-sm-2 control-label">端口:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="port"  number="true">
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-2 control-label">掩码:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="mask">
	    </div>
	    <label   class="col-sm-2 control-label">网关:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="getway">
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-2 control-label">域名商:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="domainBus" >
	    </div>
	    <label   class="col-sm-2 control-label">域名商账号:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="busAccount" >
	    </div>
	  </div>
	   <div class="form-group">
	    <label   class="col-sm-2 control-label">域名商密码:</label>
	    <div class="col-md-4">
	       <input  class="form-control"   name="busPassword" >
	    </div>
	    <label   class="col-sm-2 control-label">验证邮箱:</label>
	    <div class="col-md-4">
	       <input  class="form-control"   name="mail" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-2 control-label">注册手机:</label>
	    <div class="col-md-4">
	       <input  class="form-control"   name="tell" >
	    </div>
	    <label   class="col-sm-2 control-label">有效持有人:</label>
	    <div class="col-md-4">
	       <input  class="form-control"   name="ownner" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="remark"  class="col-sm-2 control-label">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:</label>
	    <div class="col-md-10">
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
	        	"url":basePath+"domain/selectAllPage",
	        	"type" : "POST",
	        	"data":function ( params ) {
	        		params.domain = $("#query_domain").val();
	        		params.domainBus = $("#query_domainBus").val();
	            }
	        },
	        "serverSide" : true,
	        "processing" : true,
	        "bFilter":false,
	        "bPaginate" : true,
	        "oLanguage": oLanguage,
	        "columns": [
	            {"title": "主键", "data": "id" },
	            {"title": "域名",  "data": "domain","width":'300px'},
	            {"title": "域名商", "data": "domainBus" },
	            {"title": "域名商账号",  "data": "busAccount"},
	            {"title": "域名商密码", "data": "busPassword" },
	            {"title": "验证邮箱", "data": "mail" },
	            {"title": "注册手机",  "data": "tell"},
	            {"title": "有效持有人",  "data": "ownner"},
	            {"title": "公网IP",  "data": "ip"},
	            {"title": "掩码",  "data": "mask"},
	            {"title": "网关",  "data": "getway"},
	            {"title": "端口",  "data": "port"},
	            {"title": "到期时间",  "data": "endTime"},
	            {"title": "备注",  "data": "remark" },
	            {
	            	"title":"操作",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": 
	                				  '<a title="编辑" href="javascript:;"  onclick="alter(this)"  class="btn   btn-xs  btn-info" ><i class="glyphicon glyphicon-edit"></i></a>'+
	                    			  '<a title="删除" href="javascript:;"  onclick="del(this)"  class="btn   btn-xs  btn-danger" ><i class="glyphicon glyphicon-trash"></i></a>'+
	                    			  '<a title="详情" href="javascript:;"  onclick="detail(this)"  class="btn   btn-xs  btn-warning" ><i class="glyphicon glyphicon-eye-open"></i></a>'
	            }
	        ],   
	        "columnDefs": [
	                            {
	                                "targets": [ 0,3,4,5,6,7],
	                                "visible": false,
	                                "searchable": false
	                              }
	          ]
	    } ); 
 });
 
//表单验证
 var validator = $("#addForm").validate({
     rules: {
    	 domain: {
            required: true,
            maxlength:100,
         } ,
         ip: {
             required: true,
             maxlength:20,
          }
         ,
         mask: {
             maxlength:20
          }
         ,
         getway: {
             maxlength:20
          } 
     }
 });
 laydate({
	    elem: '#endTime',
	    event: 'focus' 
	});
 function add(){
	 var $form=  $("#addForm");
	 layer.open({
	        type: 1,
	        title: '添加域名',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['1000px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"domain/add",
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
	        title: '修改域名',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['1000px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"domain/alter",
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
		        url : basePath+"domain/del",
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
 
 function detail(obj){
	 var tr = $(obj).closest("tr");
	 var data = oTable.row(tr).data();
	 var $form=  $("#addForm");
	 for(var attr in data){
		 $("[name='"+attr+"']",$form).val(data[attr]);
	 }
    layer.open({
	        type: 1,
	        title: '修改域名',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['1000px' , ''],
	        content:$form,
			btn:['关闭']});
 }
</script>


