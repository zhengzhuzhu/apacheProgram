<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan ><Font size=2>
<% session.setAttribute("message","请您猜数字");
   int randomNumber=(int)(Math.random()*100)+1;        //获取一个随机数
   session.setAttribute("savedNumber",new Integer(randomNumber));
%>
访问或刷新该页面可以随机得到一个1至100之间的数.
<BR>单击超链接去猜出这个数:<A href="inputNumber.jsp">去猜数字</A>
</Font></BODY></HTML>


