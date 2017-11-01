<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/WEB-INF/pages/util/head.jsp"%>
<title>设备信息</title>
</head>

<body>
	<!--添加表单-->
	<form class="form-horizontal clearfix" role="form" id="addForm" style="width: 95%" >
	  <input type="hidden" name="id"   value="${dev.id}">
	  <input type="hidden" name="deptId" id="deptId"  value="${dev.deptId}">
	  <h4 class="header blue lighter smaller"><i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;基本信息</h4>
	  <div class="form-group">
	    <label for="name" class="col-sm-2 control-label">设备名称:</label>
	    <div class="col-md-4">
	       <input  class="form-control"  name="name"     value="${dev.name}">
	    </div>
	    <label for="deptName" class="col-sm-2 control-label">使用部门:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="deptName" placeholder="点击选择" onclick="selectDept()" id="deptName"    value="${dev.deptName}">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="enable" class="col-sm-2 control-label">设备类型:</label>
	    <div class="col-md-4">
	     	<select  name="type" class="form-control"    id="deviceType" >
					<option value="aly">云主机</option>
		  		</select>
	    </div>
	    <label for="useContition" class="col-sm-2 control-label">使用情况:</label>
	    <div class="col-md-4">
	      <select  name="useContition" class="form-control">
				<my:dict dictType="syqk" defaultVal="${dev.useContition}"></my:dict>
		  </select>
	    </div>
	  </div>
	  <div id="timeDiv">
		   <div class="form-group">
		    <label for="buyTime" class="col-sm-2 control-label">购入日期:</label>
		    <div class="col-md-4">
		      <input  class="form-control laydate-icon"  name="buyTime"  id="buyTime"    value="${dev.buyTime}">
		    </div>
		    <label for="overTime" class="col-sm-2 control-label">过保日期:</label>
		    <div class="col-md-4">
		      <input  class="form-control laydate-icon"  name="overTime"  id="overTime"   value="${dev.overTime}">
		    </div>
		  </div>
	  </div>
	      <div class="form-group">
		    <label for="os" class="col-sm-2 control-label">操作系统:</label>
		    <div class="col-md-4">
		      <input  class="form-control"  name="os"    value="${dev.os}">
		    </div>
		    <label for="osLegal" class="col-sm-2 control-label">是否正版:</label>
		    <div class="col-md-4">
			    <select  name="osLegal" class="form-control">
					<my:dict dictType="ok" defaultVal="${dev.osLegal}" blank="true"></my:dict>
			    </select>
		    </div>
	    </div>
	    <div class="form-group">
	    	<label for="useType" class="col-sm-2 control-label">使用类型:</label>
		    <div class="col-md-4">
			    <select  name="useType" class="form-control" >
					<my:dict dictType="sylx" blank="true" defaultVal="${dev.useType}"></my:dict>
			    </select>
		    </div>
		     <label for="position" class="col-sm-2 control-label">位置:</label>
		    <div class="col-md-4">
		    	 <select  name="position" class="form-control">
					<my:dict dictType="sbszwz" defaultVal="${dev.position}"  blank="true"></my:dict>
			 	 </select>
		    </div>
	    </div>
	     <div class="form-group">
			    <label  class="col-sm-2 control-label">添加时间:</label>
			    <div class="col-md-4">
			      <input  class="form-control"  name="createTime"  value="${dev.createTime}" readonly="readonly">
			    </div>
			    <label  class="col-sm-2 control-label">添加人员:</label>
			    <div class="col-md-4">
			      <input  class="form-control"  name="createUser" value="${dev.createUser}" readonly="readonly">
			    </div>
		    </div>
		     <div class="form-group">
			    <label  class="col-sm-2 control-label">修改时间:</label>
			    <div class="col-md-4">
			      <input  class="form-control"  name="updateTime" value="${dev.updateTime}" readonly="readonly">
			    </div>
			    <label  class="col-sm-2 control-label">修改人员:</label>
			    <div class="col-md-4">
			      <input  class="form-control"  name="updateUser"  value="${dev.updateUser}" readonly="readonly">
			    </div>
		    </div>
	    <div class="form-group">
	    <label for="remark"  class="col-sm-2 control-label">备注:</label>
	    <div class="col-md-10">
	   	 <textarea class="form-control"   name="remark"   >${dev.remark }</textarea>
	    </div>
	  </div>
	  <div id="ipDiv">
		   <h4 class="header blue lighter smaller">
		   	<i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;IP信息  
		    <c:if test="${opt ne  'detail'}"> <a title="添加IP" href="javascript:;"  onclick="addIP()"  class="btn   btn-xs  btn-warning" ><i class="glyphicon glyphicon-plus">添加IP</i></a>&nbsp;</c:if>
		   </h4>
		  
		  <c:choose>
		   	<c:when test="${fn:length(dev.ips) > 0}">
		   	    <c:forEach var="m" items="${dev.ips}"> 
		  			<div name="ipGroup">
		  				<input  type="hidden" name="ips.id" value="${m.id }">
		  				<input  type="hidden" name="ips.deviceId" value="${m.deviceId }">
		  				<input  type="hidden" name="ips.createUser" value="${m.createUser }">
		  				<input  type="hidden" name="ips.createTime" value="${m.createTime}">
						  <div class="form-group">
								    <label for="cpuModel" class="col-sm-2 control-label"><c:if test="${opt ne  'detail'}"><button type="button" class="btn btn-link" onclick="delIP(this)">删除</button></c:if>IP:</label>
								    <div class="col-md-4">
								      <input  class="form-control"  name="ips.ip"  value="${m.ip }">
								    </div>
								    <label class="col-sm-2 control-label">掩码:</label>
								    <div class="col-md-4">
									    <input  class="form-control"  name="ips.mask" value="${m.mask}">
								    </div>
						  </div>	
						  <div class="form-group">
								    <label for="cpuModel" class="col-sm-2 control-label">网关:</label>
								    <div class="col-md-4">
								      <input  class="form-control"  name="ips.gateway"   value="${m.gateway }">
								    </div>
								     <label class="col-sm-2 control-label">类型:</label>
								    <div class="col-md-4">
									     <select  name="ips.type" class="form-control" >
											<my:dict dictType="iptype"  defaultVal="${m.type}"></my:dict>
									     </select>
								    </div>
						  </div>  
						  <div class="form-group">
						 			 <label class="col-sm-2 control-label">DNS1:</label>
								    <div class="col-md-4">
									    <input  class="form-control"  name="ips.dns1" value="${m.dns1 }">
								    </div>
								         <label class="col-sm-2 control-label">DNS2:</label>
								    <div class="col-md-4">
									    <input  class="form-control"  name="ips.dns2" value="${m.dns2 }">
								    </div>
						  </div>  
				  </div>
		  		</c:forEach>
  			</c:when>
  			<c:otherwise>  
				<div name="ipGroup">
						  <div class="form-group">
								    <label for="cpuModel" class="col-sm-2 control-label"><button type="button" class="btn btn-link" onclick="delIP(this)">删除</button>IP:</label>
								    <div class="col-md-4">
								      <input  class="form-control"  name="ips.ip" >
								    </div>
								    <label class="col-sm-2 control-label">掩码:</label>
								    <div class="col-md-4">
									    <input  class="form-control"  name="ips.mask">
								    </div>
						  </div>	
						  <div class="form-group">
								    <label for="cpuModel" class="col-sm-2 control-label">网关:</label>
								    <div class="col-md-4">
								      <input  class="form-control"  name="ips.gateway" >
								    </div>
								    <label class="col-sm-2 control-label">类型:</label>
								    <div class="col-md-4">
									     <select  name="ips.type" class="form-control" >
											<my:dict dictType="iptype"></my:dict>
									     </select>
								    </div>
						  </div>  
						   <div class="form-group">
						   			 <label class="col-sm-2 control-label">DNS1:</label>
								    <div class="col-md-4">
									    <input  class="form-control"  name="ips.dns1">
								    </div>
								   <label class="col-sm-2 control-label">DNS2:</label>
								    <div class="col-md-4">
									    <input  class="form-control"  name="ips.dns2" >
								    </div>
						  </div>  
				  </div>
  			</c:otherwise>
		  </c:choose>  
	  </div>
	</form>
	
	<div id="iptypeDiv" style="display: none">
			<select  name="ips.type" class="form-control" >
				  <my:dict dictType="iptype"  ></my:dict>
		    </select>
	</div>
</body>
</html>
<script type="text/javascript">
 
 laydate({
	    elem: '#buyTime',
	    event: 'focus' 
	});
 laydate({
	    elem: '#overTime',
	    event: 'focus' 
	});
//表单验证
 var validator = $("#addForm").validate({
     rules: {
    	 serialNo: {
            // required: true,
             maxlength:50
          }
 			/* ,
          deptName: {
              required: true
           }  */
     }
 });
 //选择宿主
 function selectHostDev(){
	var index =  layer.open({
	        type: 2,
	        title: "选择设备",
			maxmin: true, 
			shadeClose: false, 
			 skin: 'layui-layer-rim', //加上边框
	        area : ['1000px' , '500px'],
	        content:[basePath+"device/toPublicDev?type=yj","yes"],//
			btn:['确定','取消'],
			yes:function(index,layero){	
				var datas = window[layero.find('iframe')[0]['name']].getSelectRows();
				if(!datas || datas.length < 1){
					Msg.error("请选择宿主机!");
					return false;
				}
				if(datas.length > 1){
					Msg.error("只能选择一个宿主机!");
					return false;
				}
				$("#hostId").val(datas[0].id);
				$("#hostSerialNo").val(datas[0].serialNo);
				$("#deptId").val(datas[0].deptId);
				$("#deptName").val(datas[0].deptName);
				layer.close(index);
				validator.resetForm();
			}
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
 //表单校验，父页面调用
 function valid(){
	 return $('#addForm').valid();
 }
 //添加ip
 function addIP(){
	 var html = '<div name="ipGroup"><div class="form-group">'+
						'<label for="cpuModel" class="col-sm-2 control-label"><c:if test="${opt ne  \'detail\'}"><button type="button" class="btn btn-link" onclick="delIP(this)">删除</button></c:if>IP:</label>'+
					    '<div class="col-md-4">'+
					      '<input  class="form-control"  name="ips.ip"  >'+
					    '</div>'+
					    '<label class="col-sm-2 control-label">掩码:</label>'+
					    '<div class="col-md-4">'+
						    '<input  class="form-control"  name="ips.mask">'+
					    '</div>'+
				'</div>	'+
				'<div class="form-group">'+
					    '<label for="cpuModel" class="col-sm-2 control-label">网关:</label>'+
					    '<div class="col-md-4">'+
					      '<input  class="form-control"  name="ips.gateway"  >'+
					    '</div>'+
					    '<label class="col-sm-2 control-label">类型:</label>'+
					    '<div class="col-md-4">'+
						    $("#iptypeDiv").html()+
					    '</div>'+
				'</div>'+
				'<div class="form-group">'+
				'<label class="col-sm-2 control-label">DNS1:</label>'+
			    '<div class="col-md-4">'+
				    '<input  class="form-control"  name="ips.dns1">'+
			    '</div>'+
			    '<label class="col-sm-2 control-label">DNS2:</label>'+
			    '<div class="col-md-4">'+
				    '<input  class="form-control"  name="ips.dns2">'+
			    '</div>'+
		'</div>'+
			'</div>';
	$("#ipDiv").append(html);
 }
 
 //删除添加的ip
 function delIP(obj){
	var ipGroup = $(obj).closest("div[name='ipGroup']");
	var ipId = ipGroup.find("input[name='ips.id']").val();
	if(ipId){
		layer.confirm('该IP已经保存在数据库中,删除后将不可恢复，确认要删除吗？',function(index){
			$.ajax({
		        url : basePath+"ip/del",
		        data :"id="+ipId,
		        type : "POST",
		        cache:false,
		        dataType : "json",
		        success: function(data){	
		        	 if(data.result == "ok"){
		        		 Msg.ok("删除成功");
		        		 ipGroup.remove(); 
		        	 }else{
		        		 Msg.error("删除失败");
		        	 }
		        },
		        error:function(msg){
		        	Msg.error(msg.responseText);
		        }
		    });	  
		});
	}else{
		ipGroup.remove(); 
	}
 }
</script>


