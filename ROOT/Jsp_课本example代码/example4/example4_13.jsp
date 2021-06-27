<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><!--使用response对象的sendRedirect（URL url）方法实现用户的重定义-->
    	<p>your name:</p>
    	<form action="verify.jsp" method="get" name="form">
    		<input type="text" name="boy" >
    		<input type="submit" value="Enter">
    	</form>
 	</body>
</html>