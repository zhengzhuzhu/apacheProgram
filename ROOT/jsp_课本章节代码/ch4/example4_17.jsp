<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT Size=2>
  <% session.setAttribute("customer","顾客");
  %>
 <P>输入您的姓名连接到第一百货：shop.jsp
   <FORM action="shop.jsp" method=post name=form>
       <INPUT type="text" name="boy"> 
       <INPUT TYPE="submit" value="送出" name=submit>
  </FORM>  
</FONT></BODY></HTML>
