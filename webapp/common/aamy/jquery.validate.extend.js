/*******************************插件新功能-设置插件validator的默认参数*****************************************/
/**
 * dqw
 */
$.validator.setDefaults({
	//debug:true,
    //errorElement: 'div',
    errorClass: 'help-block',
    focusInvalid: false,
    onfocusout: function(element){
        $(element).valid();
    }, 
	//onfocusout: true,
	//给未通过验证的元素进行处理
    highlight : function(element) {
        $(element).closest('div').removeClass('has-success').addClass('has-error has-feedback');  
    },  
   //验证通过的处理
    success : function(label) {  
    	 var el=label.closest('div').find("input");
         el.next().remove();//与errorPlacement相似
         el.after('<span class="glyphicon  form-control-feedback" aria-hidden="true"></span>');
         label.closest('div').removeClass('has-error').addClass("has-feedback has-success");
         label.remove(); 
    },  
    submitHandler : function(form) {  
        form.submit();  
    },
  //自定义错误消息放到哪里
    errorPlacement: function (error, element) {
    	 element.next().remove();//删除显示图标
         element.after('<span class="glyphicon  form-control-feedback" aria-hidden="true"></span>');
        element.closest('div').append(error);//显示错误消息提示
	}
});
$.extend($.validator.messages, {
	required: "这是必填字段",
	remote: "请修正此字段",
	email: "请输入有效的电子邮件地址",
	url: "请输入有效的网址",
	date: "请输入有效的日期",
	dateISO: "请输入有效的日期 (YYYY-MM-DD)",
	number: "请输入有效的数字",
	digits: "只能输入数字",
	creditcard: "请输入有效的信用卡号码",
	equalTo: "你的输入不相同",
	extension: "请输入有效的后缀",
	maxlength: $.validator.format("最多可以输入 {0} 个字符"),
	minlength: $.validator.format("最少要输入 {0} 个字符"),
	rangelength: $.validator.format("请输入长度在 {0} 到 {1} 之间的字符串"),
	range: $.validator.format("请输入范围在 {0} 到 {1} 之间的数值"),
	max: $.validator.format("请输入不大于 {0} 的数值"),
	min: $.validator.format("请输入不小于 {0} 的数值")
});