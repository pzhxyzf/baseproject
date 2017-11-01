Dialog = {
		open:function(opt){
			$.ajax({
				  type: 'POST',
				  contentType: "application/x-www-form-urlencoded; charset=utf-8",
				  url: opt.url,
				  data: opt.data,
				  dataType: "html",
				  cache:false, 
				  success: function(data){
					$(opt.showDiv).html(data);
					$(opt.modal).modal('show')
				  },
				/*  beforeSend:function(){
					$(opt.showDiv).html('<div class="alert alert-info" role="alert">数据加载中 。。。</div>');
				  },*/
				  error:function(){
					$(opt.showDiv).html('<div class="alert alert-danger" role="alert">404页面没找到</div>');
				  }
				});
		}
}


StringUtils = {
		isEmpty:function(value){
			if(value == null || value.length <= 0){
				return true;
			} 
			return false;
		},
	   
		isBlank:function(value){
			var strLen;
	        if (value == null || value == undefined || (strLen = value.length) <= 0 || value == "") {
	            return true;
	        }
	        return false;
		}
}
/**
 * dataTable分页设置
 */
var oLanguage = {
	"sProcessing": "Bitte warten...",
	"sLengthMenu": "显示_MENU_条 ",
	"sZeroRecords": "没有找到符合条件的记录",
	"sInfo": "_START_ 到 _END_ 条记录——总记录: _TOTAL_ 条",
	"sInfoEmpty": "记录数为0",
	"sInfoFiltered": "(全部记录数 _MAX_  条)",
	"sInfoPostFix": "",
	"oPaginate": {
		"sFirst":    "第一页",
		"sPrevious": "上一页",
		"sNext":     "下一页",
		"sLast":     "最末页"
	}
}

Msg = {
	ok:function (msg){
		//显示图片编号从0到6  0！ 1√  2× 3？ 4 锁 5哭 6 笑  
		layer.msg(msg,{icon: 6,time:1500});
	},
	error:function (msg){
		layer.msg(msg,{icon: 2,time:1500});
	},
	warn:function (msg){
		layer.msg(msg,{icon: 0,time:1500});
	}
}

