<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT Size=2>
  ����ָ�����һ��1��100֮���������£�
  <% int num=(int)(Math.random()*100)+1;
     session.setAttribute("count",new Integer(0));
     session.setAttribute("save",new Integer(num));
  %>
 <BR><A HREF="guess.jsp">ȥ�²������</A> 
</FONT></BODY></HTML>
