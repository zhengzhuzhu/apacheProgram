<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<HTML><BODY bgcolor=cyan><FONT size=4>
<P>现在的时间是：<BR>
<%   out.println(""+new Date());
     response.setHeader("Refresh","5");
	 //response.setHeader("Refresh","5;URL=example4_8.jsp");
 %>
</FONT></BODY></HTML>