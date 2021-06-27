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
 当前猜测结果：<%=message%>
 <% if(message.startsWith("您猜对了")){
 %>    <br><A HREF="example4_18.jsp">重新获得随机数</A> 
 <% }
    else{
 %>   <BR>输入您的猜测：
      <FORM action="" method="post" name=form>
         <INPUT type="text" name="guessNumber" > 
         <INPUT TYPE="submit" value="送出" name="submit">
     </FORM>
<%  }
%>
</FONT></BODY></HTML>
