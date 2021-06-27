<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="bean.data.PC.*"%>
<jsp:useBean id="computer" class="bean.data.PC" scope="session"/>
<html>
	<body>
		<form action="" method="post">
			计算机品牌：<input type="text" name="pinpai" >
			<br>计算机型号：<input type="text" name="xinghao" >
			<br>生产日期：<input type="text" name="riqi" >
			<input type="submit" value="提交">
		</form>
		<jsp:setProperty name="computer" property="*"/>
		<a href="show.jsp">访问show.jsp，查看有关信息。</a>
	</body>
</html>
