<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="words" %>
<html>
	<% String s="welcome use the variable";
	%>
	<body color=cyan>
		<words:GetWord str="<%=s%>"/>
		字符串：<br><h1><%=s%><br></h1>中全部单词：
		<%
			for(int i=0;i<wordList.size();i++){
				out.print("<br>"+wordList.get(i));
			}
		%>
		
	</body>
</html>
