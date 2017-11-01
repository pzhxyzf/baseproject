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
	  <input type="hidden" name="deviceAttr.id"    value="${dev.deviceAttr.id}">
	  <input type="hidden" name="deviceAttr.deviceId"   value="${dev.deviceAttr.deviceId}">
	  <h4 class="header blue lighter smaller"><i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;基本信息</h4>
	  <div class="form-group">
	    <label for="serialNo" class="col-sm-2 control-label">设备序列号:</label>
	    <div class="col-md-4">
	      <input  class="form-control"   name="serialNo"   value="${dev.serialNo}">
	    </div> 
	    <label for="fixedNo" class="col-sm-2 control-label">固定资产编号:</label>
	    <div class="col-md-4">
	      <input  class="form-control"  name="fixedNo"     value="${dev.fixedNo}">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="model" class="col-sm-2 control-label">型号:</label>
	    <div class="col-md-4">
	        <select  name="model" class="form-control">
				<my:dict dictType="cpxh" defaultVal="${dev.model}" blank="true"></my:dict>
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
	      <label for="size" class="col-sm-2 control-label">尺寸:</label>
	    <div class="col-md-4">
	      <input  class="form-control"  name="size" number="true"   value="${dev.size}">
	    </div>
	    <label for="manufacturer" class="col-sm-2 control-label">厂商:</label>
	    <div class="col-md-4">
	    	  <select  name="manufacturer" class="form-control">
				<my:dict dictType="fws" defaultVal="${dev.manufacturer}"  blank="true"></my:dict>
		 	 </select>
	    </div>
	  </div>
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
	    <select  name="type" class="form-control"   id="deviceType" >
					<option value="yj">服务器硬件</option>
		</select>
	    </div>
	    <label for="useContition" class="col-sm-2 control-label">使用情况:</label>
	    <div class="col-md-4">
	      <select  name="useContition" class="form-control">
				<my:dict dictType="syqk" defaultVal="${dev.useContition}"></my:dict>
		  </select>
	    </div>
	  </div>
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
  
	   <div class="form-group">
		    <label for="rxnNum" class="col-sm-2 control-label">光口数量:</label>
		    <div class="col-md-4">
		      <input  class="form-control"  name="rxnNum"  number="true"   value="${dev.rxnNum}">
		    </div>
		    <label for="useType" class="col-sm-2 control-label">使用类型:</label>
		    <div class="col-md-4">
			    <select  name="useType" class="form-control" >
					<my:dict dictType="sylx" blank="true" defaultVal="${dev.useType}"></my:dict>
			    </select>
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
		   <h4 class="header blue lighter smaller"><i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;CPU信息</h4>
		  <div class="form-group">
				    <label for="cpuModel" class="col-sm-2 control-label">型号:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="deviceAttr.cpuModel"    value="${dev.deviceAttr.cpuModel}">
				    </div>
				    <label class="col-sm-2 control-label">数量:</label>
				    <div class="col-md-4">
					    <input  class="form-control"  name="deviceAttr.cpuNum"  number="true"   value="${dev.deviceAttr.cpuNum}">
				    </div>
		  </div>
		   <h4 class="header blue lighter smaller"><i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;磁盘信息</h4>
		  <div class="form-group">
				    <label for="diskBrand" class="col-sm-2 control-label">品牌:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="deviceAttr.diskBrand"    value="${dev.deviceAttr.diskBrand}">
				    </div>
				    <label for="diskModel" class="col-sm-2 control-label">型号:</label>
				    <div class="col-md-4">
					    <input  class="form-control"  name="deviceAttr.diskModel"    value="${dev.deviceAttr.diskModel}">
				    </div>
		  </div>
		   <div class="form-group">
				    <label for="diskCapacity" class="col-sm-2 control-label">容量:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="deviceAttr.diskCapacity"  number="true"    value="${dev.deviceAttr.diskCapacity}">
				    </div>
				    <label for="diskSize" class="col-sm-2 control-label">尺寸:</label>
				    <div class="col-md-4">
					    <input  class="form-control"  name="deviceAttr.diskSize"  number="true"   value="${dev.deviceAttr.diskSize}">
				    </div>
		  </div>
		  <div class="form-group">
				    <label for="diskConvolution" class="col-sm-2 control-label">转速:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="deviceAttr.diskConvolution"  number="true"    value="${dev.deviceAttr.diskConvolution}">
				    </div>
				    <label for="diskRaidModel" class="col-sm-2 control-label">阵列卡型号:</label>
				    <div class="col-md-4">
					    <input  class="form-control"  name="deviceAttr.diskRaidModel"      value="${dev.deviceAttr.diskRaidModel}">
				    </div>
		  </div>
		   <div class="form-group">
				    <label for="diskRaidType" class="col-sm-2 control-label">阵列类型:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="deviceAttr.diskRaidType" value="${dev.deviceAttr.diskRaidType}">
				    </div>
				    <label for="diskNum" class="col-sm-2 control-label">数量:</label>
				    <div class="col-md-4">
					    <input  class="form-control"  name="deviceAttr.diskNum"  number="true" value="${dev.deviceAttr.diskNum}">
				    </div>
		  </div>
		   <h4 class="header blue lighter smaller"><i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;内存信息</h4>
		  <div class="form-group">
				    <label for="ramBrand" class="col-sm-2 control-label">品牌:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="deviceAttr.ramBrand"  value="${dev.deviceAttr.ramBrand}">
				    </div>
				    <label for="ramModel" class="col-sm-2 control-label">型号:</label>
				    <div class="col-md-4">
					    <input  class="form-control"  name="deviceAttr.ramModel"  value="${dev.deviceAttr.ramModel}">
				    </div>
		  </div>
		  <div class="form-group">
				    <label for="ramDdr" class="col-sm-2 control-label">DDR:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="deviceAttr.ramDdr"   value="${dev.deviceAttr.ramDdr}">
				    </div>
				    <label for="ramCapacity" class="col-sm-2 control-label">容量:</label>
				    <div class="col-md-4">
					    <input  class="form-control"  name="deviceAttr.ramCapacity"  number="true"  value="${dev.deviceAttr.ramCapacity}">
				    </div>
		  </div>
		  <div class="form-group">
				    <label for="ramHz" class="col-sm-2 control-label">频率:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="deviceAttr.ramHz"  number="true"  value="${dev.deviceAttr.ramHz}">
				    </div>
				    <label for="ramNum" class="col-sm-2 control-label">数量:</label>
				    <div class="col-md-4">
					    <input  class="form-control"  name="deviceAttr.ramNum"  number="true" value="${dev.deviceAttr.ramNum}">
				    </div>
		  </div>
		  <h4 class="header blue lighter smaller"><i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;网口信息</h4>
		  <div class="form-group">
				    <label for="nmBand" class="col-sm-2 control-label">带宽:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="deviceAttr.nmBand"  number="true" value="${dev.deviceAttr.nmBand}">
				    </div>
				    <label for="nmNum" class="col-sm-2 control-label">数量:</label>
				    <div class="col-md-4">
					    <input  class="form-control"  name="deviceAttr.nmNum"  number="true" value="${dev.deviceAttr.nmNum}">
				    </div>
		  </div>
		  <h4 class="header blue lighter smaller"><i class="ace-icon fa fa-calendar-o smaller-90"></i>&nbsp;&nbsp;&nbsp;&nbsp;电源信息</h4>
		  <div class="form-group">
				    <label   class="col-sm-2 control-label">功率:</label>
				    <div class="col-md-4">
				      <input  class="form-control"  name="deviceAttr.powerKw"  number="true" value="${dev.deviceAttr.powerKw}">
				    </div>
				    <label  class="col-sm-2 control-label">数量:</label>
				    <div class="col-md-4">
					    <input  class="form-control"  name="deviceAttr.powerNum"  number="true" value="${dev.deviceAttr.powerNum}">
				    </div>
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


