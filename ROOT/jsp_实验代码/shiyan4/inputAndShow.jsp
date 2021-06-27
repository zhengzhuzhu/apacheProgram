<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="bean.data.*" %>
<jsp:useBean id="computer" class="bean.data.PC" scope="request"/>
<html>
	<body >
			<form action="" method="post">
				计算机的品牌：<input type="text" name="pinpai">
				<br>计算机型号：<input type="text" name="xinghao" >
				<br>生产日期：<input type="text" name="riqi" >
				<input type="submit" value="提交" >
			</form>
		<jsp:setProperty name="computer" property="*"/>
		<table border=1>
			<tr><th>计算机品牌</th>
			    <th>计算机型号</th>
			    <th>生产日期</th>
			</tr>
			<tr>
			<td><jsp:getProperty name="computer" property="pinpai"/></td>
			<td><jsp:getProperty name="computer" property="xinghao"/></td>
			<td><jsp:getProperty name="computer" property="riqi"/></td>
			</tr>
		</table>
	</body>
</html>

