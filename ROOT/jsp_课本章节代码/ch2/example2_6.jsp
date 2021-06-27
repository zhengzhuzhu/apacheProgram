<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY  bgcolor=cyan><FONT size=3>
<% double x=0.9,y=3;
%>
<P> Sin(<%=x%>)除以<%=y%>等于<%=Math.sin(x)/y%>
 <p><%=y%>的平方是： <%=Math.pow(y,2)%>
<%  x=19;
    y=32;
%>
<P><%=x%>乘以<%=y%>等于 <%=x*y%>
<P> <%=y%>的平方根等于 <%=Math.sqrt(y)%>
<P><%=y%>大于<%=x%>吗？回答：<%=y>x%>
</FONT></BODY></HTML>

