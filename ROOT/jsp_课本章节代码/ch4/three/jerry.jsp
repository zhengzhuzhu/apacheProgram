<%@ page contentType="text/html;charset=GB2312" %>
<%   String str=response.encodeURL("/ch4/jiafei.jsp");
%>
<HTML><BODY bgcolor=cyan>
   我是jerry.jsp页面
   <%  String id=session.getId();
       out.println("您的session对象的ID是：<br>"+id);
   %>
<BR> 单击超链接，连接到jiafei.jsp的页面。
<BR><A HREF="<%=str%>">  欢迎去jiafeit.jsp！</A>   
</BODY></HTML>
