<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags" %>
<%  String a=request.getParameter("sideA");
       String b=request.getParameter("sideB");
       String c=request.getParameter("sideC");
%> 
<computer:Triangle a="<%=a%>" b="<%=b%>" c="<%=c%>"/>
<HTML><BODY> 
<table border=1>
  <tr><td width=30>边A</td>
      <td width=30>边B</td>
      <td width=30>边C</td>
      <td>面积</td>
  </tr>
   <tr><td><%=a%></td>
       <td><%=b%></td>
       <td><%=c%></td>
       <td><%=result%></td>   <%-- result是Tag文件返回的对象 --%>
  </tr>
</table>
</BODY></HTML>
