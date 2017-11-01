<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>菜单</title>
</head>

<body>
	<div class="page-content clearfix">
			<div class="administrator">
				<div class="d_Confirm_Order_style">
					<div class="search_style" >
						<form action="" id="searchForm">
							<ul class="search_content clearfix">
						       <li><label class="l_f">菜单名称</label><input id="queryMenuName" type="text"  class="text_add" placeholder="菜单名称"/></li>
						       <li><label class="l_f">菜单地址</label><input id="queryMenuUrl" type="text"  class="text_add" placeholder="菜单地址"/></li>
						       <li><label class="l_f">父级菜单</label>&nbsp;
						       		<select id="queryIsparent" class="text_add" style="width:90px;" >
						       			<option  value="" ></option>
							       		<option  value="yes">是</option>
							       		<option  value="no">否</option>
						       		</select>
						       	</li>
						       <li style="width:90px;"><button type="button" class="btn_search" onclick="oTable.ajax.reload()"><i class="icon-search"></i>查询</button></li>
						    </ul>
					    </form>
					</div>
				</div>
			</div>
			<div class="border clearfix">
		       <span class="l_f">
		        <shiro:hasPermission name="sys:menu:add">
		        	<a  onclick="add()"  href="javascript:ovid()" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i>新增</a> 
		        </shiro:hasPermission>
		        <%-- <shiro:hasPermission name="sys:button:add"> --%>
		        <a  onclick="addButton()"  href="javascript:ovid()" class="btn btn-xs btn-warning"><i class="glyphicon glyphicon-saved"></i>添加功能</a> 
		        <%-- </shiro:hasPermission> --%>
		       </span>
		     </div>
			<table id="menuTable" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered table-hover"></table>
	</div>
	<!--添加菜单-->
	<form class="form-horizontal clearfix" role="form" id="add_menu" style="display: none;width: 95%" >
	  <input type="hidden" name="id" id="id">
	  <input type="hidden" name="parentId" id="parentId"  >
	  <div class="form-group">
	    <label for="menuName" class="col-sm-3 control-label"><span  style="color: red">*</span>菜单名称:</label>
	    <div class="col-sm-6">
	      <input  class="form-control" id="menuName"   name="menuName">
	    </div>
	  </div>
	   <div class="form-group">
	     <label for="menuName" class="col-sm-3 control-label">菜单级别:</label>
	     <div class="col-sm-6">
        	 <label><input name="isparent" type="radio" class="ace" checked="checked" value="no"><span class="lbl">子菜单</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         	 <label><input name="isparent" type="radio" class="ace" value="yes"><span class="lbl">父菜单</span></label>
         </div>
	  </div>
	  <div class="form-group">
	    <label for="parentName" class="col-sm-3 control-label">上级菜单:</label>
	    <div class="col-sm-6">
	      <input  class="form-control" id="parentName"   name="parentName">
	    </div>
	  </div>
	  <div class="form-group" id="menuUrlDiv">
	    <label for="menuUrl" class="col-sm-3 control-label">菜单地址:</label>
	    <div class="col-sm-6">
	      <input  class="form-control" id="menuUrl"   name="menuUrl" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="menuIcon"  class="col-sm-3 control-label">显示图标:</label>
	    <div class="col-sm-6">
	      <a  onclick="selectPricture()"  href="javascript:ovid()" class="btn   btn-xs  btn-info">点击选择</a>
	      <label id="selectedPricture"></label>
	   	  <input  type="hidden" class="form-control" id="menuIcon" name="menuIcon"     >
	    </div>
	  </div>
	   <div class="form-group">
	    <label for="menuOrder" class="col-sm-3 control-label">显示序号:</label>
	    <div class="col-sm-6">
	     <input   class="form-control" id="menuOrder" name="menuOrder"   >
	    </div>
	  </div>
	</form>
	
	
	<div  id="pictureDiv" style="display: none" >
		<ul>
			<li>
				<a class="btn btn-success"><i class="icon-glass"></i></a>
				<a class="btn btn-success"><i class="icon-music"></i></a>
				<a class="btn btn-success"><i class="icon-heart"></i></a>
				<a class="btn btn-success"><i class="icon-star"></i></a>
				<a class="btn btn-success"><i class="icon-home"></i></a>
				<a class="btn btn-success"><i class="icon-picture"></i></a>
			<li><br/>
			<li>
				<a class="btn btn-success"><i class="icon-search"></i></a>
				<a class="btn btn-success"><i class="icon-envelope-alt"></i></a>
				<a class="btn btn-success"><i class="icon-star-empty"></i></a>
				<a class="btn btn-success"><i class="icon-user"></i></a>
				<a class="btn btn-success"><i class="icon-list"></i></a>
				<a class="btn btn-success"><i class="icon-credit-card"></i></a>
			<li><br/>
			<li>
				<a class="btn btn-success"><i class="icon-film"></i></a>
				<a class="btn btn-success"><i class="icon-th-large"></i></a>
				<a class="btn btn-success"><i class="icon-th"></i></a>
				<a class="btn btn-success"><i class="icon-th-list"></i></a>
				<a class="btn btn-success"><i class="icon-user"></i></a>
				<a class="btn btn-success"><i class="icon-laptop"></i></a>
			</li><br/>
			<li>
				<a class="btn btn-success"><i class="icon-comments-alt"></i></a>
				<a class="btn btn-success"><i class="icon-bookmark"></i></a>
				<a class="btn btn-success"><i class="icon-cogs"></i></a>
				<a class="btn btn-success"><i class="icon-group"></i></a>
				<a class="btn btn-success"><i class="icon-female"></i></a>
				<a class="btn btn-success"><i class="icon-male"></i></a>
			<li><br/>
			<li>
				<a class="btn btn-success"><i class="icon-sun"></i></a>
				<a class="btn btn-success"><i class="icon-moon"></i></a>
				<a class="btn btn-success"><i class="icon-archive"></i></a>
				<a class="btn btn-success"><i class="icon-vk"></i></a>
				<a class="btn btn-success"><i class="icon-weibo"></i></a>
				<a class="btn btn-success"><i class="icon-renren"></i></a>
			<li><br/>
			<li>
				<a class="btn btn-success"><i class="icon-android"></i></a>
				<a class="btn btn-success"><i class="icon-linux"></i></a>
				<a class="btn btn-success"><i class="icon-skype"></i></a>
				<a class="btn btn-success"><i class="icon-xing"></i></a>
				<a class="btn btn-success"><i class="icon-file"></i></a>
				<a class="btn btn-success"><i class="icon-yen"></i></a>
			</li><br/>
		</ul>
 
	</div>
	
	<!--添加功能-->
	<form class="form-horizontal clearfix" role="form" id="add_button" style="display: none;width: 95%" >
	  <input type="hidden" name="id"  >
	  <input type="hidden" name="menuId">
	  <div class="form-group" id="menuUrlDiv">
	    <label for="parentMenuName" class="col-sm-3 control-label">所属菜单:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"    name="parentMenuName" disabled="disabled">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="btnName" class="col-sm-3 control-label"><span  style="color: red">*</span>功能名称:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"    name="btnName">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="btnScript" class="col-sm-3 control-label"><span  style="color: red">*</span>功能参数:</label>
	    <div class="col-sm-6">
	      <input  class="form-control"     name="btnScript">
	    </div>
	  </div>
	</form>
	
</body>
</html>
<script type="text/javascript">
var oTable;
 $(function(){
		//初始化列表
	 	oTable =  $('#menuTable').DataTable( {
	        "ajax":  {
	        	"url":basePath+"menu/selectAll",
	        	"type" : "POST",
	        	"data":function ( params ) {
	        		params.menuName = $("#queryMenuName").val();
	        		params.menuUrl = $("#queryMenuUrl").val();
	        		params.isparent = $("#queryIsparent").val();
	            }
	        },
	        "serverSide" : true,
	        "processing" : true,
	        "bFilter":false,
	        "bPaginate" : true,
	        "oLanguage": oLanguage,
	        "columns": [
	             {
	            	"title":"选择",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": '<label><input name="rowChoose" type="radio" class="ace" value="yes"><span class="lbl"></span></label>' 
	            },
	            {
	            	"title":"功能",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": '<span class="row-details row-details-close"></span>' 
	            },
	            {"title": "主键", "data": "id"},
	            {"title": "上级菜单",  "data": "parentId"},
	            {"title": "菜单名称",  "data": "menuName","width":"15%"},
	            {"title": "是否父节点",  "data": "isparent","width":"10%"},
	            {"title": "菜单地址",  "data": "menuUrl","width":"25%"},
	            {"title": "上级菜单",  "data": "parentName","width":"15%"},
	            {"title": "菜单图标",  "data": "menuIcon","width":"10%" },
	            {
	            	"title":"操作",
	                "class":          'td-manage',
	                "orderable":      false,
	                "data":           null,
	                "defaultContent": '<shiro:hasPermission name="sys:menu:alter"><a title="编辑" href="javascript:;"  onclick="alter(this)"  class="btn   btn-xs  btn-info" ><i class="glyphicon glyphicon-edit"></i></a></shiro:hasPermission>'+
	                    			  '<shiro:hasPermission name="sys:menu:del"><a title="删除" href="javascript:;"  onclick="del(this)"  class="btn   btn-xs  btn-danger" ><i class="glyphicon glyphicon-trash"></i></a></shiro:hasPermission>'
	            }
	        ],   
	        "columnDefs": [	  {
					               //设置第一列不排序
					               "bSortable": false,
					               "aTargets": [0,1]
					           },
                           	 {
                                "targets": [ 2 ,3],
                                "visible": false,
                                "searchable": false
                              },
                              {
                                  "render": function(data, type, row) {
                                	  if(data == "yes")
                                		  return "是";
                                	  else
                                      	return "否";
                                  },
                                  "targets": 5
                              },
                              {
                                  "render": function(data, type, row) {
                                	   return  '<i class="'+data+'"></i>';
                                  },
                                  "targets": 8
                              }
	          ] 
	    } ); 
	 	  $('#menuTable').on('click', ' tbody td .row-details', function() {
		                   var nTr = $(this).parents('tr')[0];
		                   if (oTable.row( nTr ).child.isShown()) //判断是否已打开
		                   {
		                       $(this).addClass("row-details-close").removeClass("row-details-open");
		                       oTable.row( nTr ).child.hide();
		                   } else {
		                       $(this).addClass("row-details-open").removeClass("row-details-close");
		                       fnFormatDetails(nTr, oTable.row( nTr ).data());
		                   }
		    });
 });
 function add(){
	 var data = oTable.row($("input[name='rowChoose']:checked").closest("tr")).data();
	 if(data){
		 $("#parentName").val(data.menuName);
		 $("#parentId").val(data.id);
	 }
	 var $form = $('#add_menu');
	 layer.open({
	        type: 1,
	        title: '添加菜单',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"menu/add",
				        data : param,
				        type : "POST",
				        cache:false,
				        dataType : "json",
				        success: function(data){	
				        	 if(data.result == "ok"){
				        		 oTable.ajax.reload();
				        		 Msg.ok("新增成功");
				        		 layer.close(index);
				        		 $form[0].reset()
				        	 }else{
				        		 Msg.error("新增失败");
				        	 }
				        },
				        error:function(msg){
				        	Msg.error(msg.responseText);
				        }
				    });	
			},
			cancel: function(index){ 
				layer.close(index); 
				$form[0].reset()
			}  
	    });
 }
 //修改菜单
 function alter(obj){
	 var tr = $(obj).closest("tr");
	 var data = oTable.row(tr).data();
	 debugger;
	 for(var attr in data){
		 if(attr != 'isparent')
		 $("#add_menu [name='"+attr+"']").val(data[attr]);
	 }
	 if(data.isparent == 'yes'){
		 $("#add_menu [name='isparent']").eq(1).attr('checked', 'true');
	 }else{
		 $("#add_menu [name='isparent']").eq(0).attr('checked', 'true');
	 }
	 $("#selectedPricture").html("菜单图标:&nbsp;&nbsp;<li class='"+data.menuIcon+"'></li>");
	var $form = $('#add_menu');
    layer.open({
	        type: 1,
	        title: '修改菜单',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['500px' , ''],
	        content:$form,
			btn:['提交','取消'],
			yes:function(index,layero){	
				 if(!$form.valid()) return false;
				 var param = $form.serialize();
				    $.ajax({
				        url : basePath+"menu/alter",
				        data : param,
				        type : "POST",
				        cache:false,
				        dataType : "json",
				        success: function(data){	
				        	 if(data.result == "ok"){
				        		 oTable.ajax.reload();
				        		 Msg.ok("修改成功");
				        		 layer.close(index);
				        		 $form[0].reset();
				        	 }else{
				        		 Msg.error("修改失败");
				        	 }
				        },
				        error:function(msg){
				        	Msg.error(msg.responseText);
				        }
				    });	
			},
			cancel: function(index){ 
				layer.close(index); 
				$form[0].reset()
			} 
	    });  
 }
 //删除菜单
 function del(obj){
	 layer.confirm('确认要删除吗？',function(index){
		 var tr = $(obj).closest("tr");
		 var data = oTable.row(tr).data();
		 $.ajax({
		        url : basePath+"menu/del",
		        data : "id="+data.id,
		        type : "POST",
		        cache:false,
		        dataType : "json",
		        success: function(data){	
		        	 if(data.result == "ok"){
		        		 oTable.ajax.reload();
		        		 Msg.ok(data.message);
		        		 layer.close(index);
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
 
 //选择图标
 var layer2;
 function selectPricture(){
	 layer2 =  layer.open({
	        type: 1,
	        title: '选择图标',
			maxmin: true, 
			shadeClose: false, //点击遮罩关闭层
	        area : ['380px' , ''],
	        content:$('#pictureDiv')
	 });
 }
//表单验证
 $("#add_menu").validate({
     rules: {
    	 menuName: {
            required: true,
            maxlength:50,
         },
         menuUrl:{
        	 maxlength:100
         },
         menuOrder:{
        	 number:true
         }
     }
 });

 $(function(){
	 $('#pictureDiv a').on( 'click',function () {
	     var cls = $(this).find("i").attr("class");
	     layer.close(layer2);
	     $("#selectedPricture").html("菜单图标:&nbsp;&nbsp;<li class='"+cls+"'></li>");
	     $("#menuIcon").val(cls);
	 } ); 
	/*  $("#add_menu input[name='isparent']").on('click',function(){
		 if($(this).val() == 'yes'){
			 $("#menuUrlDiv").hide();
		 }else{
			 $("#menuUrlDiv").show();
		 }
	 }); */
 });

//表单验证
 $("#add_button").validate({
     rules: {
    	 btnName: {
            required: true,
            maxlength:50,
         },
         btnScript:{
        	 required: true,
        	 maxlength:50
         }
     }
 });

//刷新某菜单下功能列表
function refushButtonTable(nTr) {
	try{
		if (!oTable.row(nTr).child.isShown()) //判断是否已打开
		{
			nTr.find('td .row-details').addClass("row-details-open").removeClass("row-details-close");
		}
		fnFormatDetails(nTr, oTable.row(nTr).data());
	}catch (e) {
		// TODO: handle exception
	}
}
//给菜单添加功能
function addButton() {
	var nTr = $("input[name='rowChoose']:checked").closest("tr")[0];
	var data = oTable.row(nTr).data();
	if (!data) {
		Msg.error("请选择菜单!");
		return;
	}
	var $form = $('#add_button');
	$("input[name='parentMenuName']", $form).val(data.menuName);
	$("input[name='menuId']", $form).val(data.id);
	layer.open({
		type : 1,
		title : '添加功能',
		maxmin : true,
		shadeClose : false, //点击遮罩关闭层
		area : [ '500px', '' ],
		content : $form,
		btn : [ '提交', '取消' ],
		yes : function(index, layero) {
			if (!$form.valid())
				return false;
			var param = $form.serialize();
			$.ajax({
				url : basePath + "menu/addButton",
				data : param,
				type : "POST",
				cache : false,
				dataType : "json",
				success : function(data) {
					if (data.result == "ok") {
						Msg.ok("新增成功");
						refushButtonTable(nTr);
						layer.close(index);
						$form[0].reset()
					} else {
						Msg.error("新增失败");
					}
				},
				error : function(msg) {
					Msg.error(msg.responseText);
				}
			});
		},
		cancel : function(index) {
			layer.close(index);
			$form[0].reset()
		}
	});
}
/**
 * 修改功能
 */
function alterButton(obj,rowIndex){
	var $form = $('#add_button');
	var nTr = $("#menuTable tbody tr").get(rowIndex);
	for(var attr in obj.button){
		 $("[name='"+attr+"']",$form).val(obj.button[attr]);
	}
	$("input[name='parentMenuName']", $form).val(obj.menuName);
	layer.open({
		type : 1,
		title : '修改功能',
		maxmin : true,
		shadeClose : false, //点击遮罩关闭层
		area : [ '500px', '' ],
		content : $form,
		btn : [ '提交', '取消' ],
		yes : function(index, layero) {
			if (!$form.valid())
				return false;
			var param = $form.serialize();
			$.ajax({
				url : basePath + "menu/alterButton",
				data : param,
				type : "POST",
				cache : false,
				dataType : "json",
				success : function(data) {
					if (data.result == "ok") {
						Msg.ok("修改成功");
						refushButtonTable(nTr);
						layer.close(index);
						$form[0].reset()
					} else {
						Msg.error("修改失败");
					}
				},
				error : function(msg) {
					Msg.error(msg.responseText);
				}
			});
		},
		cancel : function(index) {
			layer.close(index);
			$form[0].reset()
		}
	});
}
/**
 * 删除功能
 */
function delButton(id,rowIndex){
	var nTr = $("#menuTable tbody tr").get(rowIndex);
	 layer.confirm('确认要删除吗？',function(index){
		 $.ajax({
		        url : basePath+"menu/delButton",
		        data : "id="+id,
		        type : "POST",
		        cache:false,
		        dataType : "json",
		        success: function(data){	
		        	 if(data.result == "ok"){
		        		 refushButtonTable(nTr);
		        		 Msg.ok(data.message);
		        		 layer.close(index);
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
//查看功能权限
function fnFormatDetails(nTr, data) {
	debugger;
	$.ajax({
				type : 'post',
				url : basePath + 'menu/selectAllButton',
				data : {
					"menuId" : data.id
				},
				dataType : "JSON",
				async : true,
				beforeSend : function(xhr) {//信息加载中
					// oTable.fnOpen( nTr, '<span id="configure_chart_loading"><img src="${pageContext.request.contextPath }/image/select2-spinner.gif"/>详细信息加载中...</span>', 'details' );
				},
				success : function(r, textStatus) {
					debugger;
					if (textStatus == "success") { //转换格式 组合显示内容
						var res = r.data;
						if (res.length > 0) {
							var sOut = '<table  border="1"  style="margin-left: 100px">';
							sOut += '<thead><tr>';
							sOut += '<th width="10px"></th>';
							sOut += '<th width="200px">功能名称</th>';
							sOut += '<th width="200px">功能编码</th>';
							sOut += '<th width="200px">操作</th>';
							sOut += '</tr></thead>';
							sOut += '<tbody>';
							for (var i = 0; i < res.length; i++) {
								sOut += '<tr>';
								sOut += '<td></td>';
								/* sOut+='<td>'+res[i].id+'</td>'; */
								sOut += '<td>' + res[i].btnName + '</td>';
								sOut += '<td>' + res[i].btnScript + '</td>';
								sOut += '<td>';
								var obj = {
									 button:res[i],
									 menuName:data.menuName
								}
								obj = JSON.stringify(obj);
								sOut += '<a title="编辑" href="javascript:;"  onclick=\'alterButton('+obj+','+nTr._DT_RowIndex+')\'  class="btn   btn-xs  btn-info" ><i class="glyphicon glyphicon-edit"></i></a>';
								sOut += '<a title="删除" href="javascript:;"  onclick=\'delButton("'+res[i].id+'",'+nTr._DT_RowIndex+')\'  class="btn   btn-xs  btn-danger" ><i class="glyphicon glyphicon-trash"></i></a>';
								sOut += '</td>';
								sOut += '</tr>'
							}
							sOut += '</tbody>';
							sOut += '</table>';
							oTable.row(nTr).child(sOut, 'details').show()
									.child()[0];
						}
					}
				},
				error : function() {//请求出错处理
					oTable.row(nTr).child('加载数据超时~', 'details').show()
							.child()[0];
				}
			});

}
</script>

