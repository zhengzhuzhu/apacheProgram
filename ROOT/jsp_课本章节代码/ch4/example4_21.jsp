<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<HTML><BODY bgcolor=yellow>
  <% int a=100;long b=300;boolean c=true;
     out.println("<H1>���Ǳ���1����Ĵ�С</HT1>");
     out.println("<H2>���Ǳ���2����Ĵ�С</HT2>");
     out.print("<BR>");
     out.println(a);  out.println(b);  out.println(c);
  %>
  <Center>
  <p><Font size=2 >������һ�����</Font> 
  <%  out.print("<Font face=���� size=2 >");
      out.println("<Table Border >");
      out.println("<tr >");
            out.println("<th width=80>"+"����"+"</th>");
            out.println("<th width=60>"+"�Ա�"+"</th>");
            out.println("<th width=200>"+"��������"+"</th>");
      out.println("</tr>");
      out.println("<tr >");
            out.println("<td >"+"����һ"+"</td>");
            out.println("<td >"+"��"+"</td>");
            out.println("<td >"+"1978��5��"+"</td>");
      out.println("</tr>");
      out.println("<tr>");
            out.println("<td >"+"�֡�ϼ"+"</td>");
            out.println("<td >"+"Ů"+"</td>");
            out.println("<td >"+"1979��8��"+"</td>");
     out.println("</tr>");
     out.println("</Table>");
     out.print("</Font>")  ;
  %>
  </Center>
</BODY></HTML>
