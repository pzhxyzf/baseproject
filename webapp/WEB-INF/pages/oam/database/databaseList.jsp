<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>数据库信息</title>
</head>

<body>
	<div class="page-content clearfix">
	       <div class="search_style" >
					<form>
						<ul class="search_content clearfix">
							 <li><label >实例名 :</label><input id="query_sid" type="text"  class="text_add" /></li>
							<!--  <li><label >表空间 :</label><input id="query_spaceData" type="text"  class="text_add" /></li> -->
							 <li><label >数据类型:</label>
							 	<select  id="query_databaseType" class="text_add" >
									<my:dict dictType="dbtype" blank="true"></my:dict>
								  </select>
							 </li>
							 <li><button type="button" class="btn btn-xs  btn-primary" onclick="oTable.ajax.reload();"><i class="icon-search"></i>查询</button></li>
							 <li><button type="reset"  class="btn btn-xs  btn-info" ><i class="glyphicon glyphicon-remove-sign"></i>重置</button></li>
						</ul>
					</form>
					</div>
			<div class="border clearfix">
		       <span class="l_f">
		        <shiro:hasPermission name="oam:database:add"><a  onclick="add()"  href="#" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i>新增</a> </shiro:hasPermission>
		       </span>
		     </div>
			<table id="oTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
	</div>
</body>
</html>
<script type="text/javascript">
var oTable;
 $(function(){
		//初始化列表
	 	oTable =  $('#oTable').DataTable( {
	        "ajax":  {
	        	"url":basePath+"database/selectAllPage",
	        	"type" : "POST",
	        	"data":function ( params ) {
	        		params.sid = $("#query_sid").val();
	        		params.databaseType = $("#query_databaseType").val();
	        		params.spaceData = $("#query_spaceData").val();
	            }
	        },
	        "serverSide" : true,
	        "processing" : true,
	        "bFilter":false,
	        "bPaginate" : true,
	        "oLanguage": oLanguage,
	        "columns": [
	            {"title": "主键", "data": "id" },
	            {"title": "设备序列号",  "data": "dev.serialNo"},
	            {"title": "资产编号",  "data": "dev.fixedNo"},
	            {"title": "服务器名称", "data": "dev.name" },
	            {"title": "应用全称",  "data": "app.fullName","defaultContent":""},
	            {"title": "IP", "data": "ip.ip" },
	            {"title": "主备", "data": "useTypeTitle" },
	            {"title": "数据库类型",  "data": "databaseType"},
	            {"title": "实例名称",  "data": "sid"},
	            {"title": "备注",  "data": "remark" },
	            {
	            	"title":"操作",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": 
	                				  '<a title="编辑" href="javascript:;"  onclick="alter(this)"  class="btn   btn-xs  btn-info" ><i class="glyphicon glyphicon-edit"></i></a>'+
	                    			  '<a title="删除" href="javascript:;"  onclick="del(this)"  class="btn   btn-xs  btn-danger" ><i class="glyphicon glyphicon-trash"></i></a>'+
	                    			  '<a title="查看详情" href="javascript:;"  onclick="detail(this)"  class="btn   btn-xs  btn-warning" ><i class="glyphicon glyphicon-eye-open"></i></a>'
	            }
	        ],   
	        "columnDefs": [
	                            {
	                                "targets": [ 0 ],
	                                "visible": false,
	                                "searchable": false
	                              }
	          ]
	    } ); 
 });

 function getUserJsonStr($form){
	 var userGroup = $("div[name='userGroup']",$form);
	 var users = new Array();
	 if(userGroup.length > 0){
		 for(var i = 0,len = userGroup.length; i < len; i++){
			 var userDiv = $(userGroup[i]);
			 var username = userDiv.find("input[name='users.username']").val();
			 if(!username){
				continue;
			 }
			 users.push({
				 "id":userDiv.find("input[name='users.id']").val(),
				 "databaseId":userDiv.find("input[name='users.databaseId']").val(),
				 "username":username,
				 "userpd":userDiv.find("input[name='users.userpd']").val(),
				 "role":userDiv.find("select[name='users.role']").val(),
				 "remark":userDiv.find("input[name='users.remark']").val()
			 })
		 }
	 }  
	 return JSON.stringify(users);
 }
 
 function add(){
	 var index = layer.open({
	        type: 2,
	        title: '添加信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['800px' , ''],
	        content:basePath+"database/toAddPage",
			btn:['提交','取消'],
			yes:function(index,layero){	
				 var pass =  window[layero.find('iframe')[0]['name']].valid();
				 if(!pass) return false;
				 var $form=  layer.getChildFrame('#addForm', index);
				 var param = $form.serialize();
				 var userJson =  getUserJsonStr($form);
			     $.ajax({
			        url : basePath+"database/add",
			        data :param+"&userJson="+userJson,
			        type : "POST",
			        cache:false,
			        dataType : "json",
			        success: function(data){	
			        	 if(data.result == "ok"){
			        		 Msg.ok("新增成功");
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
			}
	    });
		layer.full(index);
 }
 function alter(obj){
	 var tr = $(obj).closest("tr");
	 var data = oTable.row(tr).data();
	 if(!data.id){
		 Msg.error("请选择要修改的数据");
		 return;
	 }
	 var index = layer.open({
	        type: 2,
	        title: '修改信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['800px' , ''],
	        content:basePath+"database/toAlterPage?opt=alter&id="+data.id,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 var pass =  window[layero.find('iframe')[0]['name']].valid();
				 if(!pass) return false;
				 var $form=  layer.getChildFrame('#addForm', index);
				 var param = $form.serialize();
				 var userJson =  getUserJsonStr($form);
				     $.ajax({
				        url : basePath+"database/alter",
				        data :param+"&userJson="+userJson,
				        type : "POST",
				        cache:false,
				        dataType : "json",
				        success: function(data){	
				        	 if(data.result == "ok"){
				        		 Msg.ok("新增成功");
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
			}
	    });
		layer.full(index);
 }
 function del(obj){
	 layer.confirm('确认要删除吗？',function(index){
		 var tr = $(obj).closest("tr");
		 var data = oTable.row(tr).data();
		 $.ajax({
		        url : basePath+"database/del",
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
 
 //查看详情
 function detail(obj){
	 var tr = $(obj).closest("tr");
	 var data = oTable.row(tr).data();
	 if(!data.id){
		 Msg.error("请选择要查看的数据");
		 return;
	 }
	 var index = layer.open({
	        type: 2,
	        title: '查看详细信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['800px' , ''],
	        content:basePath+"database/toAlterPage?opt=detail&id="+data.id,
			btn:['关闭']
	    });
		layer.full(index);	 
 }
</script>


