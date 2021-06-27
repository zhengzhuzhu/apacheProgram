<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*"%>
<HTML><BODY bgcolor=cyan><Font size=3>
   <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="page" >
   </jsp:useBean>
  <%--通过上述JSP标记，用户获得了一个scope是page，id是girl的bean --%>
   <% girl.setRadius(100);
   %>
    圆的半径是：<%=girl.getRadius()%>
<br>圆的周长是：<%=girl.circlLength()%>
<br>圆的面积是：<%=girl.circleArea()%>
</BODY></HTML>
