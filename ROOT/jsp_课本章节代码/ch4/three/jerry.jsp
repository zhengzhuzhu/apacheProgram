<%@ page contentType="text/html;charset=GB2312" %>
<%   String str=response.encodeURL("/ch4/jiafei.jsp");
%>
<HTML><BODY bgcolor=cyan>
   ����jerry.jspҳ��
   <%  String id=session.getId();
       out.println("����session�����ID�ǣ�<br>"+id);
   %>
<BR> ���������ӣ����ӵ�jiafei.jsp��ҳ�档
<BR><A HREF="<%=str%>">  ��ӭȥjiafeit.jsp��</A>   
</BODY></HTML>
