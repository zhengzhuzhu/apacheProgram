<%@ page contentType="text/html;charset=gb2312"%>
<%  request.setCharacterEncoding( "GB2312");%>
<%@ page import="tom.jiafei.MessBoard"%>
<jsp:useBean id="board" class="tom.jiafei.MessBoard" scope="application"/>
<html>
	<body>
		<form action="" methos="post" name="form">
			����������֣�<br><input type="text" name="name">
			<br>����������Ա��⣺<br><input type="text" name="title">
			<br>����������ԣ�<br><TEXTAREA name="content" ROWs="10" COLS=36 WRAP="physical"></TEXTAREA>
			<br><input type="submit" value="�ύ��Ϣ" name="submit">
		</form>
		<jsp:setProperty name="board" property="*"/>
		<a href="MessShow.jsp">�鿴���԰�</a>
	</body>
</html>