<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<HTML><BODY bgcolor=yellow>
  <%  Vector<String> v=(Vector)application.getAttribute("Mess");
      out.print("<table border=2>");
        out.print("<tr>");
           out.print("<td bagcolor=cyan>"+"����������"+"</td>");
           out.print("<td bagcolor=cyan>"+"���Ա���"+"</td>");
           out.print("<td bagcolor=cyan>"+"����ʱ��"+"</td>");
           out.print("<td bagcolor=cyan>"+"��������"+"</td>");
        for(int i=0;i<v.size();i++){
           out.print("<tr>");
           String message=v.elementAt(i);
           byte bb[]=message.getBytes("iso-8859-1");
           message=new String(bb);
           String a[]=message.split("#");
           out.print("<tr>");
           int number=a.length-1;
           for(int k=0;k<=number;k++) {
              if(k<number)
                 out.print("<td bgcolor=cyan >"+a[k]+"</td>");
              else
                out.print("<td><TextArea rows=3 cols=12>"+a[k]+"</TextArea> </td>");
           }
           out.print("</tr>");
        } 
      out.print("</table>");
    %>
 <A HREF="submit.jsp" >�������԰�</A> 
</BODY></HTML>
