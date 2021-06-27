<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><Font size=2>
<% String message=(String)session.getAttribute("message"); //获取会话中的信息 
%>
<Table border=1>
<FORM action="handleGuess" method=post>
 <tr><td> 输入您的猜测:</td>
 <td><Input Type=text name=clientGuess size=4><Input Type=submit value="提交"></td>
 </tr><td> 提示信息:</td>
      <td> <%= message%></td>
</FORM>
 <FORM action="example8_6.jsp" method=post>
  <tr><td>单击按钮重新开始: </td>
      <td><Input Type=submit value="随机得到一个1至100之间的数字"></td>
  </tr>
</FORM>
</Font></BODY></HTML>
