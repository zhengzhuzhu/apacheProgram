<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="user.yourbean.SaveNumber"%>
<jsp:useBean id="average" type="user.yourbean.SaveNumber" scope="request"/>
<html><body>
	<jsp:getProperty name="average" property="firstNumber"/>Óë
	<jsp:getProperty name="average" property="secondNumber"/>µÄ
	<jsp:getProperty name="average" property="type"/>=
	<jsp:getProperty name="average" property="result"/>
</body></html>