<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><Font size=2>
<% String message=(String)session.getAttribute("message"); //��ȡ�Ự�е���Ϣ 
%>
<Table border=1>
<FORM action="handleGuess" method=post>
 <tr><td> �������Ĳ²�:</td>
 <td><Input Type=text name=clientGuess size=4><Input Type=submit value="�ύ"></td>
 </tr><td> ��ʾ��Ϣ:</td>
      <td> <%= message%></td>
</FORM>
 <FORM action="example8_6.jsp" method=post>
  <tr><td>������ť���¿�ʼ: </td>
      <td><Input Type=submit value="����õ�һ��1��100֮�������"></td>
  </tr>
</FORM>
</Font></BODY></HTML>
