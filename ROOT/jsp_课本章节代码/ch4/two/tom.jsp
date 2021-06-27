<%@ page contentType="text/html;Charset=GB2312" %>
<%   String str=response.encodeURL("/ch4/three/jerry.jsp");
%>
<HTML><BODY  bgcolor=cyan>
   我是tom.jsp页面
   <%  String id=session.getId();
       out.println("您的session对象的ID是：<br>"+id);
   %>
<BR> 单击超链接，连接到jerry.jsp的页面。
<BR><A HREF="<%=str%>"> 欢迎去jerry.jsp页面！</A>   
</BODY></HTML>
