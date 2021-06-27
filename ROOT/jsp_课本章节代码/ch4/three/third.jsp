<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=yellow>
   我是third.jsp页面
   <%  String id=session.getId();
       out.println("您的session对象的ID是：<br>"+id);
   %>
<BR> 单击超链接，连接到first.jsp的页面。
<BR><A HREF="/ch4/first.jsp">  欢迎去first.jsp！</A>   
</BODY></HTML>
