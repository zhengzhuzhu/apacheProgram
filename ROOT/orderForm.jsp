<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*" %>
<%
	String book=request.getParameter("bookMess");
	if(book!=null){
		StringTokenizer fenxi=new StringTokenizer(book,"@");
		String bookName=fenxi.nextToken();
		String bookISBN=fenxi.nextToken();
		session.setAttribute(bookISBN,book);
	}
%>
<html>
	<body bgcolor="cyan">
		<font size="4">
			<p>图书订单</p>
			<table border="3">
				<%
					Enumeration keys=session.getAttributeNames();
					while(keys.hasMoreElements()){
						String key=(String)keys.nextElement();
						book=(String)session.getAttribute(key);
						if(book!=null){
							StringTokenizer fenxi=new StringTokenizer(book,"@");
						%>
						<tr><td><%=fenxi.nextToken()%></td>
						<td><%=fenxi.nextToken()%></td>
						<td><%=fenxi.nextToken()%></td>
						</tr>
						<%
					}
				%>
			</table>
		</font>
	</body>
</html>
