<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>资产信息</title>
</head>

<body>
	<div class="page-content clearfix">
	       <div class="search_style" >
					<form>
						<ul class="search_content clearfix">
							 <li><label >软件名称:</label><input id="query_softName" type="text"  class="text_add" /></li>
							 <li><label >品牌:</label><input id="query_brand" type="text"  class="text_add" /></li>
							 <li><label >客服电话:</label><input id="query_serviceTell" type="text"  class="text_add" /></li>
							 <li><label >已使用:</label>
							 <select  id="query_used" class="text_add" >
								<my:dict dictType="ok" blank="true"></my:dict>
							 </select>
							</li>
							 <li><button type="button" class="btn btn-xs  btn-primary" onclick="oTable.ajax.reload();"><i class="icon-search"></i>查询</button></li>
							 <li><button type="reset"  class="btn btn-xs  btn-info" ><i class="glyphicon glyphicon-remove-sign"></i>重置</button></li>
						</ul>
					</form>
					</div>
			<div class="border clearfix">
		       <span class="l_f">
		        <shiro:hasPermission name="oam:softasset:add"><a  onclick="add()"  href="#" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i>新增</a> </shiro:hasPermission>
		       </span>
		     </div>
			<table id="oTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
	</div>
		<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="addForm" style="display: none;width: 95%" >
	  <input type="hidden" name="id">
	  <input type="hidden" name="createUser">
	  <input type="hidden" name="createTime">
	  <input type="hidden" name="updateUser">
	  <input type="hidden" name="updateTime">
	   <input type="hidden" name="deptId" id="deptId">
	  <div class="form-group">
	    <label   class="col-sm-3 control-label"><span  style="color: red">*</span>软件名称:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="softName">
	    </div>
	  </div>
	   <div class="form-group">
	    <label   class="col-sm-3 control-label">品牌</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="brand"  >
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label">购买个数:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"   name="buyNum" number="true">
	    </div>
	  </div>
	   <div class="form-group">
	    <label   class="col-sm-3 control-label">已使用:</label>
	    <div class="col-sm-6">
	       <select  name="used" class="form-control" >
				<my:dict dictType="ok"></my:dict>
			 </select> 
	    </div>
	  </div>
	   <div class="form-group">
	    <label   class="col-sm-3 control-label">使用部门:</label>
	    <div class="col-sm-6">
	       <input  class="form-control"   name="deptName" id="deptName" placeholder="点击选择" onclick="selectDept()" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label   class="col-sm-3 control-label">客服电话:</label>
	    <div class="col-sm-6">
	       <input  class="form-control"   name="serviceTell" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="remark"  class="col-sm-3 control-label">安装情况:</label>
	    <div class="col-sm-6">
	   	 <textarea class="form-control" rows="3" name="installDetail" ></textarea>
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
 $(function(){
		//初始化列表
	 	oTable =  $('#oTable').DataTable( {
	        "ajax":  {
	        	"url":basePath+"softAsset/selectAllPage",
	        	"type" : "POST",
	        	"data":function ( params ) {
	        		params.softName = $("#query_softName").val();
	        		params.brand = $("#query_brand").val();
	        		params.used = $("#query_used").val();
	        		params.serviceTell = $("#query_serviceTell").val();
	            }
	        },
	        "serverSide" : true,
	        "processing" : true,
	        "bFilter":false,
	        "bPaginate" : true,
	        "oLanguage": oLanguage,
	        "columns": [
	            {"title": "主键", "data": "id" },
	            {"title": "已使用Code",  "data": "used"},
	            {"title": "deptId",  "data": "deptId"},
	            {"title": "createUser",  "data": "createUser"},
	            {"title": "createTime",  "data": "createTime"},
	            {"title": "updateUser",  "data": "updateUser"},
	            {"title": "updateTime",  "data": "updateTime"},
	            {"title": "软件名称",  "data": "softName"},
	            {"title": "品牌",  "data": "brand"},
	            {"title": "购买个数", "data": "buyNum" },
	            {"title": "已使用",  "data": "usedTitle"},
	            {"title": "使用部门", "data": "deptName" },
	            {"title": "客服电话",  "data": "serviceTell"},
	            {"title": "安装情况", "data": "installDetail" },
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
 });
 
//表单验证
 var validator = $("#addForm").validate({
     rules: {
    	 softName: {
            required: true,
            maxlength:100,
         }
     }
 });
 function add(){
	 var $form=  $("#addForm");
	 layer.open({
	        type: 1,
	        title: '添加资产',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"softAsset/add",
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
	        title: '修改资产',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"softAsset/alter",
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
		        url : basePath+"softAsset/del",
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
 
 
//选择部门
function selectDept(){
	 layer.open({
	        type: 2,
	        title: "选择部门",
			maxmin: true, 
			shadeClose: false, 
			 skin: 'layui-layer-rim', //加上边框
	        area : ['800px' , '500px'],
	        content:[basePath+"dept/toPublicPage","no"],
			btn:['确定','取消'],
			yes:function(index,layero){	
				var datas = window[layero.find('iframe')[0]['name']].getSelectRows();
				if(!datas || datas.length < 1){
					Msg.error("请选择部门!");
					return false;
				}
				if(datas.length > 1){
					Msg.error("只能选择一个部门!");
					return false;
				}
				$("#deptId").val(datas[0].id);
				$("#deptName").val(datas[0].deptName);
				layer.close(index);
				validator.resetForm();
			}
	    });  
}
</script>


