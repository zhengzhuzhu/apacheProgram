<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*"%>
<HTML><BODY bgcolor=yellow><Font size=2>
 <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="session" >
   </jsp:useBean>
<P>圆的半径是：
   <%=girl.getRadius()%>
  <%girl.setRadius(600);%>
<P>修改后的圆的半径是：
   <%=girl.getRadius()%>
   <A href="bean1.jsp"><BR>bean1.jsp </A>
</BODY></HTML>
