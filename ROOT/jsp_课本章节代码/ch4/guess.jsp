<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="guessNumber"%>
<HTML><BODY bgcolor=cyan><FONT Size=2>
 <%   String str=request.getParameter("guessNumber");
      if(str==null) 
        str="*";
      if(str.length()==0)
        str="*";
 %>
 <guessNumber:GuessTag number="<%=str%>" />
 ��ǰ�²�����<%=message%>
 <% if(message.startsWith("���¶���")){
 %>    <br><A HREF="example4_18.jsp">���»�������</A> 
 <% }
    else{
 %>   <BR>�������Ĳ²⣺
      <FORM action="" method="post" name=form>
         <INPUT type="text" name="guessNumber" > 
         <INPUT TYPE="submit" value="�ͳ�" name="submit">
     </FORM>
<%  }
%>
</FONT></BODY></HTML>
