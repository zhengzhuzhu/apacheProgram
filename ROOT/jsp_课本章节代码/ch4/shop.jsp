<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT Size=2>
   <% String s=request.getParameter("boy");
      session.setAttribute("name",s);
   %>
  �����ǵ�һ�ٻ���<br>�������빺�����Ʒ���ӵ����ˣ�account.jsp��
  <FORM action="account.jsp" method=post name=form>
    <INPUT type="text" name="buy"> 
    <INPUT TYPE="submit" value="�ͳ�" name=submit>
  </FORM>  
</FONT></BODY></HTML>
