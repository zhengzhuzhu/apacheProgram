<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY> 
 ¡¡<% String str=null;
      str=request.getParameter("boy");
      if(str==null)
        str="";
      byte b[]=str.getBytes("ISO-8859-1");
      str=new String(b);
      if(str.equals(""))
         response.sendRedirect("example4_13.jsp"); 
      else{ 
         out.print("»¶Ó­ÄúÀ´µ½±¾ÍøÒ³£¡");
         out.print(str);
      }
%>
</BODY></HTML>