<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*"%>
<HTML><BODY bgcolor=cyan><Font size=2>
   <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="session" >
   </jsp:useBean>
<P>Բ�İ뾶�ǣ�
  <%=girl.getRadius()%>
 <A href="bean2.jsp"><BR>bean2.jsp </A>
</BODY></HTML>
