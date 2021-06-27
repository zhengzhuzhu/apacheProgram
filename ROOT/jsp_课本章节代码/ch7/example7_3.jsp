<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*"%>
 <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="application"/>
<HTML><BODY>
   圆的半径是：<%=girl.getRadius()%>
  <%girl.setRadius(1000);%>
  <br>修改后的圆的半径是：<%=girl.getRadius()%>
</BODY></HTML>
