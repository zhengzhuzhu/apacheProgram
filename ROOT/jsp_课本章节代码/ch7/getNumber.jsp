<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.GuessNumber" %> 
<jsp:useBean id="guess" class="tom.jiafei.GuessNumber" scope="session"/>
<HTML><BODY bgcolor=cyan><FONT size=2>
<% int n=(int)(Math.random()*100)+1;
   String str=response.encodeRedirectURL("guess.jsp");
%>
<jsp:setProperty  name= "guess"  property="answer" value="<%=n%>"/>
  �������һ��1��100֮���������²�������Ƕ��٣�
<Form action="<%=str%>" method=post >
  ������Ĳ²�: <Input type=text name="guessNumber">
<Input type=submit value="�ύ">
</FONT></FORM></BODY></HTML>
