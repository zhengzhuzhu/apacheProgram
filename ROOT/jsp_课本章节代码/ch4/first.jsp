<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY  bgcolor=cyan>
   ����first.jspҳ��,��������������ӵ�second.jsp
   <% String id=session.getId();
      out.println("<br>����session�����ID�ǣ�<br>"+id);
   %>
  <FORM action="two/second.jsp" method=post name=form>
       <INPUT type="text" name="boy"> 
       <INPUT TYPE="submit" value="�ͳ�" name=submit>
  </FORM>  
</BODY></HTML>

