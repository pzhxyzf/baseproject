<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="<%=basePath %>common/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="<%=basePath %>common/css/style.css"/>
        	<link rel="stylesheet" href="<%=basePath %>common/assets/css/ace.min.css" />
        <link rel="stylesheet" href="<%=basePath %>common/assets/css/font-awesome.min.css" />
        <link href="<%=basePath %>common/assets/css/codemirror.css" rel="stylesheet">
		<!--[if IE]>
		  <link rel="stylesheet" href="<%=basePath %>common/assets/css/font-awesome-ie7.min.css" />
		  <link rel="stylesheet" href="<%=basePath %>common/assets/css/ace-ie.min.css" />
		  <script src="<%=basePath %>common/aamy/json2.js"></script>	
		  <script src="<%=basePath %>common/assets/js/respond.min.js"></script>
		  <script src="<%=basePath %>common/assets/js/html5shiv.js"></script>
		<![endif]-->
		<script src="<%=basePath %>common/assets/js/ace-extra.min.js"></script>
		<script src="<%=basePath %>common/js/jquery-1.9.1.min.js"></script>
         <script src="<%=basePath %>common/assets/dist/echarts.js"></script>
        <script src="<%=basePath %>common/assets/js/bootstrap.min.js"></script>            
       <title></title>
       </head>		
<body>
<div class="page-content clearfix">
 <div class="alert alert-block alert-success">
  <button type="button" class="close" data-dismiss="alert"><i class="icon-remove"></i></button>
  <i class="icon-ok green"></i>欢迎使用<strong class="green">xxx系统<small>(v1.0)</small></strong>
 </div>
</div>
</body>
</html>
  