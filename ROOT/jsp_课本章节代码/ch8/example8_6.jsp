<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan ><Font size=2>
<% session.setAttribute("message","����������");
   int randomNumber=(int)(Math.random()*100)+1;        //��ȡһ�������
   session.setAttribute("savedNumber",new Integer(randomNumber));
%>
���ʻ�ˢ�¸�ҳ���������õ�һ��1��100֮�����.
<BR>����������ȥ�³������:<A href="inputNumber.jsp">ȥ������</A>
</Font></BODY></HTML>


