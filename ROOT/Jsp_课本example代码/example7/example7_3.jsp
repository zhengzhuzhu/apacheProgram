<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="tom.jiafei.*"%>
	<jsp:useBean id="girl" class="tom.jiafei.Circle" scope="application"/>
<html>
	<body>
		Բ�İ뾶��<%=girl.getRadius()%>
		<%girl.setRadius(1000);%><!--�޸İ뾶��ֵ,�����û����ʸ�ҳ�濴�������޸ĺ�İ뾶ֵ-->
		<br>�޸ĺ�Բ�İ뾶��<%=girl.getRadius()%>
	</body>
</html>
