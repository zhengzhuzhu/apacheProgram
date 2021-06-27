<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="tom.jiafei.*"%>
	<jsp:useBean id="girl" class="tom.jiafei.Circle" scope="application"/>
<html>
	<body>
		圆的半径：<%=girl.getRadius()%>
		<%girl.setRadius(1000);%><!--修改半径的值,其他用户访问该页面看到的是修改后的半径值-->
		<br>修改后圆的半径：<%=girl.getRadius()%>
	</body>
</html>
