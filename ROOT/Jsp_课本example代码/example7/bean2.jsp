<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="tom.jiafei.*"%>
<html><body >
	<font>
		<jsp:useBean id="girl" class="tom.jiafei.Circle" scope="session">
		</jsp:useBean>
		<p>Բ�İ뾶��
			<%=girl.getRadius()%>
			<%girl.setRadius(600);%>
		<p>�޸ĺ��Բ�İ뾶��
			<%=girl.getRadius()%>
	</font>
</body>
</html>
