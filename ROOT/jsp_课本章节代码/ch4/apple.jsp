<%@ page contentType="text/html;charset=GB2312" %>
<MHML><BODY>   
��ȡ�ı����ύ����Ϣ��
   <%  String textContent=request.getParameter("boy");
        byte  b[]=textContent.getBytes("ISO-8859-1");
        textContent=new String(b);
   %>
  <%=textContent%> 
<BR> ��ȡ��ť�����֣�
   <% String buttonName=request.getParameter("submit");
       byte  c[]=buttonName.getBytes("ISO-8859-1");
       buttonName=new String(c);
   %>
   <%=buttonName%> 
</BODY></HTML>
