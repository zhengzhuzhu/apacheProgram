<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY>
 <FORM action="messagePane.jsp" method="post" name="form">
    <P>�����������֣�
    <INPUT type="text" name="peopleName">
     <BR>
     <P>�����������Ա��⣺
    <INPUT type="text" name="Title">
     <BR>
     <P>�����������ԣ�
    <BR>
    <TEXTAREA name="messages" ROWs="10" COLS=36 WRAP="physical" >
    </TEXTAREA>
    <BR>
    <INPUT type="submit" value="�ύ��Ϣ" name="submit">
 </FORM>
 <FORM action="showMessage.jsp" method="post" name="form1">
    <INPUT type="submit" value="�鿴���԰�" name="look">
 </FORM>
</BODY></HTML>
