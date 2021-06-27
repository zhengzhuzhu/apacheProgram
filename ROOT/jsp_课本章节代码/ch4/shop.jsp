<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT Size=2>
   <% String s=request.getParameter("boy");
      session.setAttribute("name",s);
   %>
  这里是第一百货。<br>输入您想购买的商品连接到结账：account.jsp。
  <FORM action="account.jsp" method=post name=form>
    <INPUT type="text" name="buy"> 
    <INPUT TYPE="submit" value="送出" name=submit>
  </FORM>  
</FONT></BODY></HTML>
