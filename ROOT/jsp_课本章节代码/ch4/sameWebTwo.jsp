<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT size=2> 
<%  String mess=request.getHeader("referer");
    if(mess==null){
       mess="";
       response.setStatus(404);
    }
    if(!(mess.startsWith("http://127.0.0.1:8080/ch4"))) //不允许网站ch4以外的其他网站盗链本页面
       response.setStatus(404);
%>
<P> 欢迎访问本页面!<BR>
    您来自:<%=mess%>
</FONT></BODY></HTML>
