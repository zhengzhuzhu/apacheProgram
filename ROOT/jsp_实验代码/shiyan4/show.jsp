<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="bean.data.PC"%>
<jsp:useBean id="computer" class="bean.data.PC" scope="session"/>
<html>
	<body>
		<table border=1>
			<tr><th>品牌</th>
				<th>型号</th>
				<th>日期</th>
			</tr>
			<tr>
				<td><jsp:getProperty name="computer" property="pinpai"/></td>
				<td><jsp:getProperty name="computer" property="xinghao"/></td>
				<td><jsp:getProperty name="computer" property="riqi"/></td>
			</tr>
		</table>
	</body>
</html>
