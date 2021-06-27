<%@page contentType="text/html;charset=GB2312"%>
<%@page import="java.io.*"%>
<html>
	<body bgcolor="coral">
		<font size="5">
			<% File f1=new File("D:/apachr-tomcat-6.0.13/webapps/ch5","examle5_1.jsp");
				File f2=new File("jasper.sh");
		%>
		<br>文件<%=f1.getName()%>是可读的吗？<%=f1.canRead()%>
		<br>文件<%=f1.getName()%>的长度：<%=f1.length()%>字节
		<br>jasper.sh是目录吗？<%=f2.isDirectory()%>
		<br><%=f1.getName()%>的父目录是：<%=f1.getParent()%>
		<br><%=f2.getName()%>的绝对目录：<%=f2.getAbsolutePath()%>
		</font>
	</body>
</html>
