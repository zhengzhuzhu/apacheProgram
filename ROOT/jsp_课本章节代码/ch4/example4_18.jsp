<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT Size=2>
  随机分给了你一个1到100之间的数，请猜！
  <% int num=(int)(Math.random()*100)+1;
     session.setAttribute("count",new Integer(0));
     session.setAttribute("save",new Integer(num));
  %>
 <BR><A HREF="guess.jsp">去猜测这个数</A> 
</FONT></BODY></HTML>
