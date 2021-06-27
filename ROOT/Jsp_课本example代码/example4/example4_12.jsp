<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <!--
          	5秒刷新,可以跳转到其他页面。根据系统时间记录.
          	refresh是头名，可修改
         -->
    	<p>THE TIME IS:</p>
    	<% out.println(""+new Date());
    		response.setHander("Refresh","5");	
    		//response.setHander("Refresh","5",URL=example4_8.jsp);
    	%>
 	</body>
</html>