<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*"%>
<HTML><BODY bgcolor=cyan><Font size=3>
   <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="page" >
   </jsp:useBean>
  <%--ͨ������JSP��ǣ��û������һ��scope��page��id��girl��bean --%>
   <% girl.setRadius(100);
   %>
    Բ�İ뾶�ǣ�<%=girl.getRadius()%>
<br>Բ���ܳ��ǣ�<%=girl.circlLength()%>
<br>Բ������ǣ�<%=girl.circleArea()%>
</BODY></HTML>
