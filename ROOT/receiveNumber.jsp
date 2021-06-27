<%@page contentType="text/html;charset=gb2312"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="computer"%>
<html>
	<body bgcolor="coral">
		<%
			String a=request.getParameter("numberOne");
			String b=request.getParameter("numberTwo");
			String operator=request.getParameter("operator");
			if(a==null||b==null){
				a="";
				b="";
			}
			if(a.length()>0&&b.length()>0){
			%>
			<computer:Computer numberA="<%=a%>" numberB="<%=b%>"
			operator="<%=operator%>"/>
			计算结果：<%=a%><%=operator%><%=b%>=<%=result%>
			<%
			}
		%>
		<a href="inputNumber.jsp">返回输入数据的界面</a>
	</body>
</html>
