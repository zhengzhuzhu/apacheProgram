<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="user.yourbean.SaveNumber"%>
<jsp:useBean id="aver" type="user.yourbean.SaveNumber" scope="request"/>
<html>
<body bgcolor=cyan>
<jsp:getProperty name="aver" property="firstNumber"/>Óë
<jsp:getProperty name="aver" property="secondNumber"/>µÄ
<jsp:getProperty name="aver" property="type"/>=
<jsp:getProperty name="aver" property="result"/>
</body>
</html>