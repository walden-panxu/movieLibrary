/*
 *实现图片的循环切换
 *
 *
 */
 $(document).ready(function(){
      $(".bill,.center").cycle( );
          


        $(".text_input").bind("focus",function(){
		
	   	  
			 $(this).prev().css("visibility","hidden");	
		  
	   });

       $(".text_input").bind("blur",function(){
		
	   	  if ($(this).val().length!=0) 
	   	  {
			 $(this).prev().css("visibility","hidden");	
		  }
		  if($.trim($(this).val()).length==0)
		  {
			$(this).prev().css("visibility","visible");
		  }
	   });

});