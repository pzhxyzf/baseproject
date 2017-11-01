<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>应用</title>
</head>

<body>
	<div class="page-content clearfix">
			<div class="administrator">
				<div class="d_Confirm_Order_style">
					<div class="search_style">
					<form>
						<ul class="search_content clearfix">
							 <li><label >应用名称 :</label><input id="query_fullName" type="text"  class="text_add" /></li>
							 <li><label >拼音 :</label><input id="query_pinyin" type="text"  class="text_add" /></li>
							 <li><label >使用环境:</label>
							 	<select  id="query_useEvn"  class="text_add"  >
									<my:dict dictType="syhj" blank="true"></my:dict>
							   </select>
							 </li>
							 <li><button type="button" class="btn btn-xs  btn-primary" onclick="oTable.ajax.reload();"><i class="icon-search"></i>查询</button></li>
							 <li><button type="reset"  class="btn btn-xs  btn-info" ><i class="glyphicon glyphicon-remove-sign"></i>重置</button></li>
						</ul>
					</form>
					</div>
				</div>
			</div>
			<div class="border clearfix">
		       <span class="l_f">
		        <shiro:hasPermission name="oam:app:add"><a  onclick="add()"  href="#" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i>新增</a> </shiro:hasPermission>
		        <shiro:hasPermission name="oam:devapp:add"><a  onclick="addDevApp()"  href="#" class="btn btn-xs btn-warning"><i class="glyphicon glyphicon-send"></i>部署</a> </shiro:hasPermission>
		       	<shiro:hasPermission name="oam:appuser:query"><a  onclick="addAppUser()"  href="#" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-user"></i>登录账户</a> </shiro:hasPermission>
		    	 </span>
		     </div>
			<table id="oTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
			<table id="mxTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
	</div>
	
	<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="addForm" style="display: none;width: 95%" >
	  <input type="hidden" name="id" id="id">
	  <input type="hidden" name="createTime">
	   <input type="hidden" name="createUser">
	  <div class="form-group">
	    <label   class="col-sm-3 control-label"><span  style="color: red">*</span>应用全称:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="fullName">
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label">应用简称:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="simpleName" >
	    </div>
	  </div>
	   <div class="form-group">
	    <label   class="col-sm-3 control-label">拼音字母:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="pinyin" >
	    </div>
	  </div>
	   <div class="form-group">
	    <label   class="col-sm-3 control-label">使用环境:</label>
	    <div class="col-sm-6">
	       <select  name="useEvn" class="form-control"  >
				<my:dict dictType="syhj"></my:dict>
		   </select>
	    </div>
	  </div>
	   <div class="form-group">
	    <label   class="col-sm-3 control-label">域名:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="domainName" id="domainName" placeholder="点击选择" onclick="selectDomain()" >
	      <input type="hidden" name="domainId" id="domainId">
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
var mxTable;
var appId;
 $(function(){
		//初始化列表
	 	oTable =  $('#oTable').DataTable( {
	        "ajax":  {
	        	"url":basePath+"app/selectAllPage",
	        	"type" : "POST",
	        	"data":function ( params ) {
	        		params.fullName = $("#query_fullName").val();
	        		params.pinyin = $("#query_pinyin").val();
	        		params.useEvn = $("#query_useEvn").val();
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
	            {"title": "环境Code",  "data": "useEvn"},
	            {"title": "域名ID",  "data": "domainId" },
	            {"title": "创建人员",  "data": "createUser" },
	            {"title": "创建时间",  "data": "createTime" },
	            {"title": "修改人员",  "data": "updateUser" },
	            {"title": "修改时间",  "data": "createTime" },
	            {
	            	"title":"选择",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "width":30,
	                "defaultContent": '<label><input name="rowChoose" type="radio" class="ace" value="yes"><span class="lbl"></span></label>' 
	            },
	            {"title": "应用全称",  "data": "fullName"},
	            {"title": "应用简称",  "data": "simpleName"},
	            {"title": "拼音",  "data": "pinyin"},
	            {"title": "使用环境",  "data": "useEvnTitle"},
	            {"title": "域名",  "data": "domainName"},
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
	                                "targets": [ 0,1,2,3,4,5,6 ],
	                                "visible": false,
	                                "searchable": false
	                              }
	          ]
	    } ); 
		
	 	//初始化列表
	 	mxTable =  $('#mxTable').DataTable( {
	        "ajax":  {
	        	"url":basePath+"devapp/selectAllPage",
	        	"type" : "POST",
	        	"data":function ( params ) {
	        		params.appId = appId;
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
	            {"title": "应用ID",  "data": "appId"},
	            {"title": "应用全程",  "data": "app.fullName"},
	            {"title": "设备序号",  "data": "dev.serialNo"},
	            {"title": "固定资产编号", "data": "dev.fixedNo" },
	            {"title": "设备名称",  "data": "dev.name"},
	            {"title": "厂商",  "data": "dev.manufacturer"},
	            {"title": "型号", "data": "dev.model" },
	            {"title": "操作系统", "data": "dev.os" },
	            {"title": "IP",  "data": "ip.ip" },
	            {"title": "端口号",  "data": "port" },
	            {"title": "部署容器",  "data": "container" },
	            {"title": "部署环境",  "data": "env" },
	            {"title": "部署环境",  "data": "path" },
	            {"title": "备注",  "data": "remark" },
	            {
	            	"title":"操作",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": 
	                				  '<a title="编辑" href="javascript:;"  onclick="alterDevApp(this)"  class="btn   btn-xs  btn-info" ><i class="glyphicon glyphicon-edit"></i></a>'+
	                    			  '<a title="删除" href="javascript:;"  onclick="delDevApp(this)"  class="btn   btn-xs  btn-danger" ><i class="glyphicon glyphicon-trash"></i></a>'
	            }
	        ],   
	        "columnDefs": [
	                            {
	                                "targets": [0,1],
	                                "visible": false,
	                                "searchable": false
	                              }
	          ]
	    } ); 
	 	
	 	$('#oTable tbody').on( 'click', 'tr', function () {
	 		 var data = oTable.row(this).data();
	 		 appId = data.id;
	 		 mxTable.ajax.reload();
	     } );
 });
 
 function add(){
	 var $form=  $("#addForm");
	 layer.open({
	        type: 1,
	        title: '添加应用',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"app/add",
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
	        title: '修改应用',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"app/alter",
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
		        url : basePath+"app/del",
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
    	 fullName: {
            required: true,
            maxlength:50,
         },
         simpleName: {
             maxlength:50
         },
         pinyin: {
             maxlength:30
         }
     }
 });
 
 //部署应用
 function addDevApp(){
	 var data = oTable.row($("input[name='rowChoose']:checked").closest("tr")).data();
	 if(!data || !data.id){
		 Msg.error("请选择应用");
		 return;
	 }
	 var index = layer.open({
	        type: 2,
	        title: '部署信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['800px' , ''],
	        content:basePath+"devapp/deployApp?appId="+data.id,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 var pass =  window[layero.find('iframe')[0]['name']].valid();
				 if(!pass) return false;
				 var $form=  layer.getChildFrame('#addForm', index);
				 var param = $form.serialize();
			     $.ajax({
			        url : basePath+"devapp/add",
			        data :param,
			        type : "POST",
			        cache:false,
			        dataType : "json",
			        success: function(data){	
			        	 if(data.result == "ok"){
			        		 Msg.ok("新增成功");
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
			}
	    });
		layer.full(index);
 }
 //修改部署
 function alterDevApp(obj){
	 var data = mxTable.row($(obj).closest("tr")).data();
	 if(!data || !data.id){
		 Msg.error("请选择要修改的记录");
		 return;
	 }
	 var index = layer.open({
	        type: 2,
	        title: '修改部署信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['800px' , ''],
	        content:basePath+"devapp/deployAlterApp?id="+data.id,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 var pass =  window[layero.find('iframe')[0]['name']].valid();
				 if(!pass) return false;
				 var $form=  layer.getChildFrame('#addForm', index);
				 var param = $form.serialize();
			     $.ajax({
			        url : basePath+"devapp/alter",
			        data :param,
			        type : "POST",
			        cache:false,
			        dataType : "json",
			        success: function(data){	
			        	 if(data.result == "ok"){
			        		 Msg.ok("新增成功");
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
			}
	    });
		layer.full(index);
 }
 
 function delDevApp(obj){
	 layer.confirm('确认要删除吗？',function(index){
		 var tr = $(obj).closest("tr");
		 var data = mxTable.row(tr).data();
		 $.ajax({
		        url : basePath+"devapp/del",
		        data : "id="+data.id,
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
 
 //选择域名
 function selectDomain(){
	 layer.open({
	        type: 2,
	        title: "选择域名",
			maxmin: true, 
			shadeClose: false, 
			 skin: 'layui-layer-rim', //加上边框
	        area : ['800px' , '500px'],
	        content:[basePath+"menu/toAny?path=oam/domain/publicDomain","no"],
			btn:['确定','取消'],
			yes:function(index,layero){	
				var datas = window[layero.find('iframe')[0]['name']].getSelectRows();
				if(!datas || datas.length < 1){
					Msg.error("请选择域名!");
					return false;
				}
				if(datas.length > 1){
					Msg.error("只能选择一个域名!");
					return false;
				}
				$("#domainId").val(datas[0].id);
				$("#domainName").val(datas[0].domain);
				layer.close(index);
				validator.resetForm();
			}
	    });  
 }
 
 //登录账户信息
 function addAppUser(){
	 var data = oTable.row($("input[name='rowChoose']:checked").closest("tr")).data();
	 if(!data || !data.id){
		 Msg.error("请选择应用");
		 return;
	 }
	 var index = layer.open({
	        type: 2,
	        title: '系统账户信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['1000px' , '600px'],
	        content:[basePath+"appuser/toAppUser?appId="+data.id,'no'] 
	    });
 }
</script>


