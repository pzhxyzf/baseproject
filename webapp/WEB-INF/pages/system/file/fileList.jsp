<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<link  href="<%=basePath %>common/aamy/fileinput/css/fileinput.min.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath %>common/aamy/fileinput/js/fileinput.js"></script>
<script src="<%=basePath %>common/aamy/fileinput/js/locales/zh.js"></script>
<title>部门</title>
</head>

<body>
	<div class="page-content clearfix">
			<div class="d_Confirm_Order_style">
				<input id="inputFile" type="file" class="file" data-preview-file-type="text" name="file">  
			</div>
			<div class="search_style" >
			<form>
					<ul class="search_content clearfix">
						 <li><label class="l_f">文件名</label><input id="query_name" type="text"  class="text_add" /></li>
						 <li><label class="l_f">上传人</label><input id="query_upuser" type="text"  class="text_add" /></li>
						 <li><label class="l_f">类型&nbsp;</label>
							 <select  id="query_type"  class="text_add"  >
									<my:dict dictType="filetype" blank="true"></my:dict>
							   </select>
						 </li>
						 <li><button type="button" class="btn btn-xs  btn-primary" onclick="oTable.ajax.reload();"><i class="icon-search"></i>查询</button></li>
							 <li><button type="reset"  class="btn btn-xs  btn-info" ><i class="glyphicon glyphicon-remove-sign"></i>重置</button></li>
						</ul>
			</form>
			</div>
		   <table id="oTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
	</div>
	<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="addForm" style="display: none;width: 95%" >
	  <input type="hidden" name="id" id="id">
	   <div class="form-group">
	    <label   class="col-sm-3 control-label">文件类型:</label>
	    <div class="col-sm-6">
	       <select  name="type" class="form-control"  >
				<my:dict dictType="filetype" blank="true"></my:dict>
		   </select>
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
<!--JS代码-->
<script>
    //初始化fileinput控件
    $("#inputFile").fileinput({
    	    showRemove:false,
    	    dropZoneEnabled:false,
            showCaption: true,
            showPreview: false,
            previewFileIcon: "",
            language: 'zh',
            autoReplace: false,
            maxFileCount: 1,
            showUpload: false,
            uploadUrl:basePath + 'file/upload',
           // allowedFileExtensions: ["jpg", "png", "gif"],
            browseClass: "btn  btn-xs btn-primary", //按钮样式 
            previewFileIcon: "<i class='glyphicon glyphicon-king'></i>"
    }).on("filebatchselected", function(event, files) {
        $(this).fileinput("upload");
    }).on("fileuploaded", function(event, data) {
	    if(data.response.result == "ok")
	    {
	        Msg.ok('上传成功');
	        oTable.ajax.reload();
	    }else{
	    	 Msg.error('上传失败');
	    }
    });
</script>

<script type="text/javascript">
var oTable;
 $(function(){
		//初始化列表
	 	oTable =  $('#oTable').DataTable( {
	        "ajax":  {
	        	"url":basePath+"file/selectAllPage",
	        	"type" : "POST",
	        	"data":function ( params ) {
	        		params.name = $("#query_name").val();
	        		params.upuser = $("#query_upser").val();
	        		params.type = $("#query_type").val();
	            }
	        },
	        "serverSide" : true,
	        "processing" : true,
	        "bFilter":false,
	        "bPaginate" : true,
	        "oLanguage": oLanguage,
	        "columns": [
	            {"title": "主键", "data": "id" },
	            {"title": "类型code",  "data": "type"},
	            {"title": "文件名",  "data": "name"},
	            {"title": "类型",  "data": "typeTitle"},
	            {"title": "上传时间",  "data": "uptime"},
	            {"title": "上传人员",  "data": "upuser"},
	            {"title": "备注",  "data": "remark"},
	            {
	            	"title":"操作",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": '<a title="下载" href="javascript:;"  onclick="downloadFile(this)"  class="btn   btn-xs  btn-primary" ><i class="glyphicon glyphicon-download"></i></a>'+
						               '<a title="编辑" href="javascript:;"  onclick="alter(this)"  class="btn   btn-xs  btn-info" ><i class="glyphicon glyphicon-edit"></i></a>'+
					      			   '<a title="删除" href="javascript:;"  onclick="del(this)"  class="btn   btn-xs  btn-danger" ><i class="glyphicon glyphicon-trash"></i></a>'
	            }
	        ],   
	        "columnDefs": [
	                            {
	                                "targets": [ 0,1],
	                                "visible": false,
	                                "searchable": false
	                              }
	          ]
	    } ); 
 });
 function del(obj){
	 layer.confirm('确认要删除吗？',function(index){
		 var tr = $(obj).closest("tr");
		 var data = oTable.row(tr).data();
		 $.ajax({
		        url : basePath+"file/del",
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
 //下载
 function downloadFile(obj){
	 var tr = $(obj).closest("tr");
	 var data = oTable.row(tr).data();
	 var path = basePath + "file/download?id="+data.id;
	 window.location.href=path;
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
	        title: '修改文件信息',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"file/alter",
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
			}  
	    });  
 }
</script>


