<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% String str=null;
    	str=request.getParameter("boy");
    	if(str==null){
    		str="";
    	}
    	byte b[]=str.getBytes("ISO-8859-1");
    	str=new String(b);
    	if(str.equals(""))
    	{ response.sentRedirect("example4_13.jsp");
    	}
    	else{
    		out.println("welcome to you coming this web");
    		out.println(str);
    	}
    	
    %>
 	</body>
</html>