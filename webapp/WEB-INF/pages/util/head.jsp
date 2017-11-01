<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="my" uri="/WEB-INF/tld/mytaglib.tld" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="<%=basePath %>common/assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=basePath %>common/css/style.css" rel="stylesheet"/>       
<link href="<%=basePath %>common/assets/css/codemirror.css" rel="stylesheet">
<link href="<%=basePath %>common/assets/css/ace.min.css" rel="stylesheet" />
<link href="<%=basePath %>common/assets/css/font-awesome.min.css" rel="stylesheet"/>
<link href="<%=basePath %>common/Widget/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>common/aamy/jquery.dataTables.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>common/aamy/myCss.css" rel="stylesheet" type="text/css" />
<!--[if IE 7]>
		  <link rel="stylesheet" href="<%=basePath %>common/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
<!--[if IE]>
  <link rel="stylesheet" href="<%=basePath %>common/assets/css/ace-ie.min.css" />
  <script src="<%=basePath %>common/aamy/json2.js"></script>	
  <script src="<%=basePath %>common/assets/js/respond.min.js"></script>
<![endif]-->
<script src="<%=basePath %>common/js/jquery-1.9.1.min.js"></script>
<script src="<%=basePath %>common/assets/js/bootstrap.min.js"></script>
<script src="<%=basePath %>common/assets/js/typeahead-bs2.min.js"></script>
<!-- 表单校验 -->
<script src="<%=basePath%>common/assets/js/jquery.validate.min.js"></script>
<!-- 扩展校验规则 -->
<script src="<%=basePath%>common/aamy/jquery.validate.extend.js"></script>
<script src="<%=basePath %>common/assets/js/typeahead-bs2.min.js"></script>           	
<%-- <script src="<%=basePath %>common/assets/js/jquery.dataTables.min.js"></script>
<script src="<%=basePath %>common/assets/js/jquery.dataTables.bootstrap.js"></script> --%>
<script src="<%=basePath %>common/aamy/jquery.dataTables.js" type="text/javascript"></script> 
<script src="<%=basePath %>common/aamy/dataTables.bootstrap.js" type="text/javascript"></script> 
<script src="<%=basePath %>common/assets/layer/layer.js" type="text/javascript" ></script>          
<script src="<%=basePath %>common/js/lrtk.js" type="text/javascript" ></script>
<script src="<%=basePath %>common/assets/layer/layer.js" type="text/javascript"></script>	
<script src="<%=basePath %>common/assets/laydate/laydate.js" type="text/javascript"></script>
<script src="<%=basePath %>common/aamy/common.js" type="text/javascript"></script> 
<script>
//将表单序列化成json格式的数据(但不适用于含有控件的表单，例如复选框、多选的select)
(function($){
    $.fn.objToJson = function(){
        var jsonData1 = {};
        var serializeArray = this.serializeArray();
        // 先转换成{"id": ["12","14"], "name": ["aaa","bbb"], "pwd":["pwd1","pwd2"]}这种形式
        $(serializeArray).each(function () {
        	 jsonData1[this.name] = this.value;
        });
        return jsonData1;
    };
})(jQuery);

	var basePath = '<%=basePath %>';
	
</script>