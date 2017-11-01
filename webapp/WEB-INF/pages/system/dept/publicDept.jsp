<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>部门</title>
</head>

<body>
	 <table id="oTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
</body>
</html>
<script type="text/javascript">
var oTable;
 $(function(){
		//初始化列表
	 	oTable =  $('#oTable').DataTable( {
	        "ajax":  {
	        	"url":basePath+"dept/selectAll",
	        	"type" : "POST",
	        	"data":function ( params ) {
	            }
	        },
	        "serverSide" : true,
	        "processing" : false,
	        "bFilter":false,
	        "bPaginate" : false,
	        "oLanguage": oLanguage,
	        "columns": [
	            {"title": "主键", "data": "id" },
	            {
	            	"title":"选择",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": '<label><input name="rowChoose" type="checkbox" class="ace"><span class="lbl"></span></label>' 
	            },
	            {"title": "部门名称",  "data": "deptName"},
	            {"title": "部门编号",  "data": "deptCode"},
	            {"title": "创建时间",  "data": "createTime"},
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


