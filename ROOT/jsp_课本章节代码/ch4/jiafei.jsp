<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY  bgcolor=cyan>
<%   String str=response.encodeURL("two/tom.jsp");
%>
   ����jiafei.jspҳ��,��������������ӵ�tom.jsp
   <% String id=session.getId();
      out.println("<br>����session�����ID�ǣ�<br>"+id);
   %>
  <FORM action="<%=str%>" method=post name=form>
      <INPUT type="text" name="boy"> 
      <INPUT TYPE="submit" value="�ͳ�" name=submit>
  </FORM>  
</BODY></HTML>
