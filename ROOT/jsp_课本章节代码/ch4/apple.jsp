<%@ page contentType="text/html;charset=GB2312" %>
<MHML><BODY>   
获取文本框提交的信息：
   <%  String textContent=request.getParameter("boy");
        byte  b[]=textContent.getBytes("ISO-8859-1");
        textContent=new String(b);
   %>
  <%=textContent%> 
<BR> 获取按钮的名字：
   <% String buttonName=request.getParameter("submit");
       byte  c[]=buttonName.getBytes("ISO-8859-1");
       buttonName=new String(c);
   %>
   <%=buttonName%> 
</BODY></HTML>
