<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="bean.data.PC.*"%>
<jsp:useBean id="computer" class="bean.data.PC" scope="session"/>
<html>
	<body>
		<form action="" method="post">
			�����Ʒ�ƣ�<input type="text" name="pinpai" >
			<br>������ͺţ�<input type="text" name="xinghao" >
			<br>�������ڣ�<input type="text" name="riqi" >
			<input type="submit" value="�ύ">
		</form>
		<jsp:setProperty name="computer" property="*"/>
		<a href="show.jsp">����show.jsp���鿴�й���Ϣ��</a>
	</body>
</html>
