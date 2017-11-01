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
	            {"title": "环境",  "data": "useEvnTitle"},
	            {"title": "域名",  "data": "domainName"},
	            {"title": "备注",  "data": "remark" } 
	        ],   
	        "columnDefs": [
	                            {
	                                "targets": [ 0,1,2,3,4,5,6 ],
	                                "visible": false,
	                                "searchable": false
	                              }
	          ]
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
 
 
 function getSelectRows(){
	 var datas = oTable.rows($("input[name='rowChoose']:checked").closest("tr")).data();
	 return datas;
 }
 
</script>


