<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags" %>
<%  String a=request.getParameter("sideA");
       String b=request.getParameter("sideB");
       String c=request.getParameter("sideC");
%> 
<computer:Triangle a="<%=a%>" b="<%=b%>" c="<%=c%>"/>
<HTML><BODY> 
<table border=1>
  <tr><td width=30>��A</td>
      <td width=30>��B</td>
      <td width=30>��C</td>
      <td>���</td>
  </tr>
   <tr><td><%=a%></td>
       <td><%=b%></td>
       <td><%=c%></td>
       <td><%=result%></td>   <%-- result��Tag�ļ����صĶ��� --%>
  </tr>
</table>
</BODY></HTML>
