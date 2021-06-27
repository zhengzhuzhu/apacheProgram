<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*"%>
<HTML><BODY bgcolor=cyan><Font size=2>
   <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="page" >
   </jsp:useBean>

<%girl.setRadius(600);%>

<jsp:forward page="testbean2.jsp" />
 
</BODY></HTML>
