<%@page contentType="text/html;charset=GB2312"%>
<html>
	<body bgcolor="deepskyblue">
		<font size=6>
			<form action="receiveNumber.jsp" method="post" name="form">
			输入运算数、选择运算符号：<br>
			<input type="text" name="numberOne" size="4" >
			<select name="operator">
				<option value="+">+
				<option value="-">-
				<option value="*">*
				<option value="/">/
			</select>
			<input type="text" name="numberTwo" size="7" >
			<br><input type="submit" value="提交你 的选择" name="submit">
			</form>
		</font>
	</body>
</html>
