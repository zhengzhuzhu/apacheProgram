<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="tom.jiafei.MessBoard" %>
<jsp:useBean id="board" class="tom.jiafei.MessBoard" scope="application"/>
<html>
	<body>
		<jsp:getProperty name="board" property="allMessage"/>
		<a href="inputMess.jsp">我要留言</a>
	</body>
</html>
