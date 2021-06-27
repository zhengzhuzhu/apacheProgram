<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY  bgcolor=cyan>
   我是first.jsp页面,输入你的姓名连接到second.jsp
   <% String id=session.getId();
      out.println("<br>您的session对象的ID是：<br>"+id);
   %>
  <FORM action="two/second.jsp" method=post name=form>
       <INPUT type="text" name="boy"> 
       <INPUT TYPE="submit" value="送出" name=submit>
  </FORM>  
</BODY></HTML>

