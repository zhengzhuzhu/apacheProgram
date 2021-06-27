<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT size=4>   
   获取文本框提交的信息：
   <%  String textContent=request.getParameter("boy");
   %>
   <%=textContent%> 
<BR>获取按钮的名字：
   <%  String buttonName=request.getParameter("submit");
   %>
   <%=buttonName%> 
</FONT></BODY></HTML>
