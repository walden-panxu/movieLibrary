//实现lable字段的隐藏与显示
$(document).ready(function(){
	$(".namepassword").bind("blur",function(){
		$(this).next().css("visibility","visible");
		if ($(this).val().length!=0){
			$(this).prev().css("visibility","hidden");
		};
		if ($.trim($(this).val()).length==0) {
			$(this).prev().css("visibility","visible");
		};
	});
	$(".namepassword").bind("focus",function(){
		$(this).next().children().css('display','none');
		$(this).next().text(" ");
	});

	

	//Ajax验证用户名
	$("#myname").bind('blur',function(){

		var va=$(this).val();
		$.ajax({
			type:"post",
			url:'/register_login/checkName',
			data:{"userName":va},
			dataType:"text",
			success:function(text){
				
				if(text=="ok")
				{
					
        			$("#nameerror").append("<img src='/assets/tick.png'>");
				}
				else
				{
					
					$("#nameerror").text("用户名错误！");
				}

			}
		});
	});
	//Ajax验证密码
	$("#mypassword").bind('blur',function(){
		var va=$(this).val();
		$.ajax({
			type:"post",
			url:'/register_login/checkPassword',
			data:{"password":va},
			dataType:"text",
			success:function(text){
				
				if (text=="ok")
				{
				  $("#passerror").append("<img src='/assets/tick.png'>");
				}
				else
				{
				  $("#passerror").text("密码和用户名不匹配!");
				}	
			}
		});
	});

});