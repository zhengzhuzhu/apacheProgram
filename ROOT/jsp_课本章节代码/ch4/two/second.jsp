<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY >
   我是second.jsp页面
   <%  String id=session.getId();
       out.println("您的session对象的ID是：<br>"+id);
   %>
<BR> 单击超链接，连接到third.jsp的页面。
<BR><A HREF="/ch4/three/third.jsp"> 欢迎去third.jsp页面！</A>   
</BODY></HTML>
