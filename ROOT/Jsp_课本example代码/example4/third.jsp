<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    	I am the third.jsp
    	<%
    		String id=session.getId();
    		out.println("your session'id is<br>:"+id);
    	%>
    	<br>单击超链接，连接到first.jsp
    	<br><a href="first.jsp">welcome to the first.jsp!</a>
 	</body>
</html>