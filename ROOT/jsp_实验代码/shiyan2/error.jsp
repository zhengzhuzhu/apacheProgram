<%@page contentType="text/html;charset=gb2312"%>
<html>
    <body>
    	<p>
    	<font size="3" color="red">
    		this is error.jsp
    	</font>
    	<font>
    		<% 
    		String s=request.getParameter("mess");
    		out.println("<br>本页面得到的信息："+s);
    		%>
    	</font>
 	</body>
</html>