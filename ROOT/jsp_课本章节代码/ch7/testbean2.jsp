<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*"%>
<HTML><BODY bgcolor=yellow><Font size=2>
 <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="page" >
   </jsp:useBean>

<P>��2��ҳ�棬Բ�İ뾶�ǣ�
   <%=girl.getRadius()%>
   <A href="testbean3.jsp"><BR>testbean3.jsp </A>
</BODY></HTML>
