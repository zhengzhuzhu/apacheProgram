<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*"%>
<HTML><BODY bgcolor=yellow><Font size=2>
 <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="session" >
   </jsp:useBean>
<P>Բ�İ뾶�ǣ�
   <%=girl.getRadius()%>
  <%girl.setRadius(600);%>
<P>�޸ĺ��Բ�İ뾶�ǣ�
   <%=girl.getRadius()%>
   <A href="bean1.jsp"><BR>bean1.jsp </A>
</BODY></HTML>
