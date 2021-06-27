
<%@ page language="java" contentType="text/html; charset=gb2312"%>

<!DOCTYPE html>

<html>

<head>


<title>标题</title>

</head>

<body>

	Hello:<br>

	<font color="green" size="22">

		<%

			out.print(request.getParameter("userName")+"<br>");

		%>

	</font>

	<a href="<%=request.getContextPath()%>/loginDemo/login.jsp">重新登录</a>

</body>

</html>
