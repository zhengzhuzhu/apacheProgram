<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="tom.jiafei.*"%>
<html>
<body >
	<font size=6>
		<jsp:useBean id="girl" class="tom.jiafei.Circle" scope="page">
		</jsp:useBean>
		<!--通过useBean标记，用户获得一个scope是page，id是girl的bean-->
		<%girl.setRadius(100);%>
		圆的半径：<%=girl.getRadius()%><br>
		圆的面积：<%=girl.circleArea()%><br>
		圆的周长：<%=girl.circleLength()%>
	</font>
</body>
</html>
