<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>设备信息</title>
</head>

<body>
	<div class="page-content clearfix">
	<div class="panel panel-info">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapseThree">
					查询条件
				</a>
			</h4>
		</div>
		<div id="collapseThree" class="panel-collapse collapse">
			<div class="panel-body">
				 	<div class="search_style" >
				 		<form action="">
						<ul class="search_content">
							 <li><label >序&nbsp;列&nbsp;&nbsp;号:</label><input id="serialNo" type="text"  class="text_add" /></li>
							 <li><label >资产编号 :</label><input id="fixedNo" type="text"  class="text_add" /></li>
							 <li><label >设备名称:</label><input id="name" type="text"  class="text_add" /></li>
							 <li><label >厂&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商:</label><input id="manufacturer" type="text"  class="text_add" /></li>
							 <li><label >型&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:</label><input id="model" type="text"  class="text_add" /></li>
							 <li><label >部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门:</label><input id="deptId" type="text"  class="text_add" /></li>
							 <li><label >购入日期:</label><input id="buyTime"   type="text"  class="text_add  laydate-icon" /></li>
							 <li><label >过保日期:</label><input id="overTime"  type="text"  class="text_add  laydate-icon" /></li>
							 <li><label >使用情况:&nbsp;</label> <select  id="useContition" class="text_add" style="width: 165px">
									<my:dict dictType="syqk" blank="true"></my:dict>
							  </select>
							 </li>
							 <li><label >使用类型:&nbsp;</label>  <select  id="useType" class="text_add"  style="width: 165px">
										<my:dict dictType="sylx" blank="true"></my:dict>
								    </select>
							 </li>
							 <li><button type="button" class="btn btn-xs  btn-primary" onclick="oTable.ajax.reload();"><i class="icon-search"></i>查询</button></li>
							 <li><button type="reset"  class="btn btn-xs  btn-info" ><i class="glyphicon glyphicon-remove-sign"></i>重置</button></li>
						</ul>
						</form>
					</div>
			</div>
		</div>
	</div>
			<div class="border clearfix">
		       <span class="l_f">
		        <shiro:hasPermission name="oam:device:add"><a  onclick="add()"  href="#" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i>新增</a> </shiro:hasPermission>
		        <shiro:hasPermission name="oam:device:query"><a  onclick="addDeviceUser()"  href="#" class="btn btn-xs btn-warning"><i class="glyphicon glyphicon-user"></i>登录账户</a> </shiro:hasPermission>
		        <shiro:hasPermission name="oam:device:query"><a  onclick="addDevUpgrade()"  href="#" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-plane"></i>设备升级</a> </shiro:hasPermission>
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
	        	"url":basePath+"device/selectAllPage",
	        	"type" : "POST",
	        	"data":function ( params ) {
	        		params.serialNo = $("#serialNo").val();
	        		params.fixedNo = $("#fixedNo").val();
	        		params.name = $("#name").val();
	        		params.manufacturer = $("#manufacturer").val();
	        		params.model = $("#model").val();
	        		params.deptId = $("#deptId").val();
	        		params.buyTime = $("#buyTime").val();
	        		params.overTime = $("#overTime").val();
	        		params.useContition = $("#useContition").val();
	        		params.useType = $("#useType").val();
	        		params.types="wlsb,aqsb";
	            }
	        },
	        "serverSide" : true,
	        "processing" : true,
	        "bFilter":false,
	        "bPaginate" : true,
	        "oLanguage": oLanguage,
	        "columns": [
	            {"title": "主键", "data": "id" },
	            {
	            	"title":"选择",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "width":30,
	                "defaultContent": '<label><input name="rowChoose" type="radio" class="ace" value="yes"><span class="lbl"></span></label>' 
	            },
	            {"title": "设备序号",  "data": "serialNo"},
	            {"title": "固定资产编号", "data": "fixedNo" },
	            {"title": "设备名称",  "data": "name"},
	            {"title": "厂商",  "data": "manufacturer"},
	            {"title": "型号", "data": "model" },
	            {"title": "使用部门", "data": "deptName" },
	            {"title": "使用情况",  "data": "useContitionTitle"},
	            {"title": "购入日期",  "data": "buyTime"},
	            {"title": "过保日期",  "data": "overTime"},
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
 

 laydate({
 	    elem: '#buyTime',
 	    event: 'focus' 
 	});
 laydate({
 	    elem: '#overTime',
 	    event: 'focus' 
 	});
 function getIPJsonStr($form){
	 var ipGroup = $("div[name='ipGroup']",$form);
	 var ips = new Array();
	 if(ipGroup.length > 0){
		 for(var i = 0,len = ipGroup.length; i < len; i++){
			 var ipDiv = $(ipGroup[i]);
			 ips.push({
				 "id":ipDiv.find("input[name='ips.id']").val(),
				 "ip":ipDiv.find("input[name='ips.ip']").val(),
				 "deviceId":ipDiv.find("input[name='ips.deviceId']").val(),
				 "mask":ipDiv.find("input[name='ips.mask']").val(),
				 "dns1":ipDiv.find("input[name='ips.dns1']").val(),
				 "dns2":ipDiv.find("input[name='ips.dns2']").val(),
				 "type":ipDiv.find("select[name='ips.type']").val(),
				 "gateway":ipDiv.find("input[name='ips.gateway']").val(),
				 "createUser":ipDiv.find("input[name='ips.createUser']").val(),
				 "createTime":ipDiv.find("input[name='ips.createTime']").val(),
				 "updateUser":ipDiv.find("input[name='ips.updateUser']").val(),
				 "updateTime":ipDiv.find("input[name='ips.updateTime']").val(),
				 "remark":ipDiv.find("input[name='ips.remark']").val()
			 })
		 }
	 }  
	 return JSON.stringify(ips);
 }
 
 function add(){
	 var index = layer.open({
	        type: 2,
	        title: '添加信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['800px' , ''],
	        content:basePath+"device/toAddPage?page=netEdit",
			btn:['提交','取消'],
			yes:function(index,layero){	
				 var pass =  window[layero.find('iframe')[0]['name']].valid();
				 if(!pass) return false;
				 var $form=  layer.getChildFrame('#addForm', index);
				 var param = $form.serialize();
				 var ipStr =  getIPJsonStr($form);
				     $.ajax({
				        url : basePath+"device/add",
				        data :param+"&jsonStr="+ipStr,
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
 //修改
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
	        content:basePath+"device/alterData?page=netEdit&id="+data.id,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 var pass =  window[layero.find('iframe')[0]['name']].valid();
				 if(!pass) return false;
				 var $form=  layer.getChildFrame('#addForm', index);
				 var param = $form.serialize();
				 var ipStr =  getIPJsonStr($form);
				    $.ajax({
				        url : basePath+"device/alter",
				        data : param+"&jsonStr="+ipStr,
				        type : "POST",
				        cache:false,
				        dataType : "json",
				        success: function(data){	
				        	 if(data.result == "ok"){
				        		 Msg.ok("修改成功");
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
 function detail(obj){
	 var tr = $(obj).closest("tr");
	 var data = oTable.row(tr).data();
	 if(!data.id){
		 Msg.error("请选择要查看的数据");
		 return;
	 }
   	var index = layer.open({
	        type: 2,
	        title: '详细信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['800px' , ''],
	        content:basePath+"device/alterData?opt=detail&page=netEdit&id="+data.id,
			btn:['关闭']
	    });  
   	layer.full(index); 
 }
 function del(obj){
	 layer.confirm('确认要删除吗？',function(index){
		 var tr = $(obj).closest("tr");
		 var data = oTable.row(tr).data();
		 $.ajax({
		        url : basePath+"device/del",
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
 //登录账户信息
 function addDeviceUser(){
	 var data = oTable.row($("input[name='rowChoose']:checked").closest("tr")).data();
	 if(!data || !data.id){
		 Msg.error("请选择设备");
		 return;
	 }
	 var index = layer.open({
	        type: 2,
	        title: '系统账户信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['1000px' , '600px'],
	        content:[basePath+"device/toDevUser?deviceId="+data.id,'no'] 
	    });
 }
 //升级信息
 function addDevUpgrade(){
	 var data = oTable.row($("input[name='rowChoose']:checked").closest("tr")).data();
	 if(!data || !data.id){
		 Msg.error("请选择设备");
		 return;
	 }
	 var index = layer.open({
	        type: 2,
	        title: '设备升级信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['1000px' , '600px'],
	        content:[basePath+"device/toUpgrade?deviceId="+data.id,'no'] 
	    });
 }
</script>


