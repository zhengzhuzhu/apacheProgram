<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*"%>
 <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="application"/>
<HTML><BODY>
   Բ�İ뾶�ǣ�<%=girl.getRadius()%>
  <%girl.setRadius(1000);%>
  <br>�޸ĺ��Բ�İ뾶�ǣ�<%=girl.getRadius()%>
</BODY></HTML>
