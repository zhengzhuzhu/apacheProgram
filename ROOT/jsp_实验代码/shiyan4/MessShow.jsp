<%@ page contentType="text/html;charset=GB2312"%>
 <% request.setCharacterEncoding("GB2312"); %> 
<%@ page import="tom.jiafei.MessBoard" %>
<jsp:useBean id="board" class="tom.jiafei.MessBoard" scope="application"/>
<html>
	<body>
		<jsp:getProperty name="board" property="allMessage"/>
		<a href="inputMess.jsp">нрр╙аТят</a>
	</body>``
</html>
