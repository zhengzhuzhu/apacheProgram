<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    	<font>
    		<%
    			String mess=request.getHeader("referer");
    			if(mess==null){
    				mess="";
    				response.setStatus(404);
    			}
    			if(!(mess.startsWith("http://127.0.0.1:8080/ch4"))){  //不允许网站ch4以外的其他网站盗链本页面
    				response.setStatus(404); 
    			}
    		%>
    		<p>welcome to you coming this web!<br>
    			you are come form:<%=mess%>
    	</font>
 	</body>
</html>