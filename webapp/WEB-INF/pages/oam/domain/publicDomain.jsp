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
	        "lengthChange": false,
	        "iDisplayLength":5,
	        "columns": [
	            {"title": "主键", "data": "id" },
	            {
	            	"title":"选择",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": '<label><input name="rowChoose" type="checkbox" class="ace"><span class="lbl"></span></label>' 
	            },
	            {"title": "域名",  "data": "domain","width":'300px'},
	            {"title": "到期时间",  "data": "endTime"},
	            {"title": "备注",  "data": "remark" }
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
 function getSelectRows(){
	 var datas = oTable.rows($("input[name='rowChoose']:checked").closest("tr")).data();
	 return datas;
 }
</script>


