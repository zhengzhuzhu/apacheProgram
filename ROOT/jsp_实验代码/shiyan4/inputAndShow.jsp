<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="bean.data.*" %>
<jsp:useBean id="computer" class="bean.data.PC" scope="request"/>
<html>
	<body >
			<form action="" method="post">
				�������Ʒ�ƣ�<input type="text" name="pinpai">
				<br>������ͺţ�<input type="text" name="xinghao" >
				<br>�������ڣ�<input type="text" name="riqi" >
				<input type="submit" value="�ύ" >
			</form>
		<jsp:setProperty name="computer" property="*"/>
		<table border=1>
			<tr><th>�����Ʒ��</th>
			    <th>������ͺ�</th>
			    <th>��������</th>
			</tr>
			<tr>
			<td><jsp:getProperty name="computer" property="pinpai"/></td>
			<td><jsp:getProperty name="computer" property="xinghao"/></td>
			<td><jsp:getProperty name="computer" property="riqi"/></td>
			</tr>
		</table>
	</body>
</html>

