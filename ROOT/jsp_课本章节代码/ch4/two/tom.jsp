<%@ page contentType="text/html;Charset=GB2312" %>
<%   String str=response.encodeURL("/ch4/three/jerry.jsp");
%>
<HTML><BODY  bgcolor=cyan>
   ����tom.jspҳ��
   <%  String id=session.getId();
       out.println("����session�����ID�ǣ�<br>"+id);
   %>
<BR> ���������ӣ����ӵ�jerry.jsp��ҳ�档
<BR><A HREF="<%=str%>"> ��ӭȥjerry.jspҳ�棡</A>   
</BODY></HTML>
