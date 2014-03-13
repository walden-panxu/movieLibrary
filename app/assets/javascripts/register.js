$(document).ready(function(){
	
	$(".textinput").bind("blur",function(){
		
	   	if ($(this).val().length!=0) {
			$(this).prev().css("visibility","hidden");	
		}
		if($.trim($(this).val()).length==0)
		{
			$(this).prev().css("visibility","visible");
		}
	});
});