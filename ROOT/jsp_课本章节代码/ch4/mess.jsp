<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<MHML><BODY bgcolor=white><Font size=5>   
<BR>�û�ʹ�õ�Э����:
   <% String protocol=request.getProtocol();
       out.println(protocol);
   %>
<BR>��ȡ�����û��ύ��Ϣ��ҳ�棺
   <%  String path=request.getServletPath();
       out.println(path);
   %>
<BR>�����û��ύ��Ϣ�ĳ��ȣ�
   <% int length=request.getContentLength();
       out.println(length);
   %>
<BR>�û��ύ��Ϣ�ķ�ʽ��
   <% String method=request.getMethod();
      out.println(method);
   %>
<BR>��ȡHTTPͷ�ļ���User-Agent��ֵ��
   <% String header1=request.getHeader("User-Agent");
       out.println(header1);
   %>
<BR>��ȡHTTPͷ�ļ���accept��ֵ��
   <% String header2=request.getHeader("accept");
       out.println(header2);
   %>
<BR>��ȡHTTPͷ�ļ���Host��ֵ��
   <% String header3=request.getHeader("Host");
       out.println(header3);
   %>
<BR>��ȡHTTPͷ�ļ���accept-encoding��ֵ��
   <% String header4=request.getHeader("accept-encoding");
       out.println(header4);
   %>
<BR>��ȡ�û���IP��ַ��
   <% String  IP=request.getRemoteAddr();
       out.println(IP);
   %>
<BR>��ȡ�û��������ƣ�
   <% String clientName=request.getRemoteHost();
       out.println(clientName);
   %> 
<BR>��ȡ�����������ƣ�
   <%  String serverName=request.getServerName();
        out.println(serverName);
   %> 
<BR>��ȡ�������Ķ˿ںţ�
   <% int serverPort=request.getServerPort();
       out.println(serverPort);
   %> 
<BR>��ȡ�û����ύ�����в��������֣�
   <%  Enumeration en=request.getParameterNames();
       while(en.hasMoreElements())
        {  String s=(String)en.nextElement();
           out.println(s);
        }      
      %> 
<BR>��ȡͷ���ֵ�һ��ö�٣�
   <% Enumeration enum_headed=request.getHeaderNames();
      while(enum_headed.hasMoreElements())
       {  String s=(String)enum_headed.nextElement();
          out.println(s);
       }      
      
   %>
<BR>��ȡͷ�ļ���ָ��ͷ���ֵ�ȫ��ֵ��һ��ö�٣�
   <% Enumeration enum_headedValues=request.getHeaders("cookie");
      while(enum_headedValues.hasMoreElements())
      {  String s=(String)enum_headedValues.nextElement();
         out.println(s);
      }      
   %>
<BR>
   <P> �ı���text�ύ����Ϣ��
   <%  String str=request.getParameter("boy");
        byte  b[]=str.getBytes("ISO-8859-1");
        str=new String(b);
   %>
 <BR>  <%=str%> 
<BR> ��ť�����֣�
   <% String buttonName=request.getParameter("submit");
       byte  c[]=buttonName.getBytes("ISO-8859-1");
       buttonName=new String(c);
   %>
<BR> <%=buttonName%> 
</FONT></BODY></HTML>
