<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="tom.jiafei.*"%>
<html><body >
	<font>
		<jsp:useBean id="girl" class="tom.jiafei.Circle" scope="session">
		</jsp:useBean>
		<p>Ô²µÄ°ë¾¶£º
			<%=girl.getRadius()%>
		<a href ="bean2.jsp"><br>bean2.jsp</a>
		
	</font>
</body>
</html>
