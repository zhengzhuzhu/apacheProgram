<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*"%>
<HTML><BODY bgcolor=cyan><Font size=2>
   <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="page" >
   </jsp:useBean>

<P>��3��ҳ�棬Բ�İ뾶�ǣ�
  <%=girl.getRadius()%>

 <A href="testbean3.jsp"><BR>bean1.jsp </A>
</BODY></HTML>
