<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<link rel="stylesheet" href="<%=basePath %>common/aamy/ztree/css/metroStyle/metroStyle.css">
<script src="<%=basePath %>common/aamy/ztree/jquery.ztree.all.min.js"></script>

<title>菜单树</title>
</head>
<body>
	<ul id="menuTree" class="ztree"></ul>
 
<script type="text/javascript">
var setting = {
		data: {
			simpleData: {
				enable: true
			}
		},
		check: {
			enable: true
		}

	};
var node =  ${ztree};
$(document).ready(function(){
	$.fn.zTree.init($("#menuTree"), setting, node);
});
function getCheckedNodes(){
	var treeObj = $.fn.zTree.getZTreeObj("menuTree");
	var nodes = treeObj.getCheckedNodes(true);
	return nodes;
}
</script>
 
</body>
</html>