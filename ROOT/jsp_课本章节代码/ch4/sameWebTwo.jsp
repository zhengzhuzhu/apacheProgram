<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT size=2> 
<%  String mess=request.getHeader("referer");
    if(mess==null){
       mess="";
       response.setStatus(404);
    }
    if(!(mess.startsWith("http://127.0.0.1:8080/ch4"))) //��������վch4�����������վ������ҳ��
       response.setStatus(404);
%>
<P> ��ӭ���ʱ�ҳ��!<BR>
    ������:<%=mess%>
</FONT></BODY></HTML>
