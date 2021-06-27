<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="tom.jiafei.*"%>
<html><body >
	<font>
		<jsp:useBean id="girl" class="tom.jiafei.Circle" scope="session">
		</jsp:useBean>
		<p>圆的半径：
			<%=girl.getRadius()%>
			<%girl.setRadius(600);%>
		<p>修改后的圆的半径：
			<%=girl.getRadius()%>
	</font>
</body>
</html>
