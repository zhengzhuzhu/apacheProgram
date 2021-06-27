<%@ page contentType="text/html;charset=GB2312" %>
<%! //处理字符串的方法
   public String getString(String s){
     if(s==null)
        s="";
     try{ byte b[]=s.getBytes("ISO-8859-1");
          s=new String(b);
        }
     catch(Exception e){}
     return s;
   }
%>
<HTML><BODY bgcolor=cyan><FONT Size=2>
   <% String s=request.getParameter("buy");
      session.setAttribute("goods",s);
   %>
<BR> 
<% String 顾客=(String)session.getAttribute("customer");
   String 姓名=(String)session.getAttribute("name");
   String 商品=(String)session.getAttribute("goods");
   姓名=getString(姓名);
   商品=getString(商品);
%>
    这里是结账处,<%=顾客%>的姓名是：<%=姓名%>
<br>您选择购买的商品是：<%=商品%>
</FONT></BODY></HTML>
