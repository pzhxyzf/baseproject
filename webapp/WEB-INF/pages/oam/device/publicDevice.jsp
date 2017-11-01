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
										  <li><label >设备类型:&nbsp;</label>  <select  id="sblxType" class="text_add"  style="width: 165px">
													<my:dict dictType="sblx" blank="true" defaultVal="${param.type }"></my:dict>
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
			<table id="oTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
	</div>
	<input type="hidden" id = "paramTypes" value="${param.types }">
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
	        		params.types = $("#paramTypes").val();
	        		params.type = $("#sblxType").val();
	            }
	        },
	        "searching": false,
	        "ordering":  false,
	        "serverSide" : true,
	        "processing" : true,
	        "bFilter":false,
	        "bPaginate" : true,
	        "oLanguage": oLanguage,
	        "lengthChange": false,
	        "iDisplayLength":10,
	        "columns": [
	            {"title": "主键", "data": "id" },
	            {"title": "使用部门ID", "data": "deptId" },
	            {
	            	"title":"选择",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "width":60,
	                "defaultContent": '<label><input name="rowChoose" type="checkbox" class="ace"><span class="lbl"></span></label>' 
	            },
	            {"title": "设备类型",  "data": "typeTitle","width":100},
	            {"title": "设备序号",  "data": "serialNo","width":150},
	            {"title": "资产编号", "data": "fixedNo","width":150 },
	            {"title": "设备名称",  "data": "name","width":150},
	            {"title": "厂商",  "data": "manufacturer","width":80},
	            {"title": "型号", "data": "model","width":80 },
	            {"title": "使用情况",  "data": "useContitionTitle","width":80},
	            {"title": "系统",  "data": "os","width":100},
	            {"title": "所在位置",  "data": "position","width":150}
	            
	        ],   
	        "columnDefs": [
	                            {
	                                "targets": [ 0,1 ],
	                                "visible": false,
	                                "searchable": false
	                              }
	          ]
	    } ); 
 });
 
 function getSelectRows(){
	 var datas = oTable.rows($("input[name='rowChoose']:checked").closest("tr")).data();
	 return datas;
 }
</script>


