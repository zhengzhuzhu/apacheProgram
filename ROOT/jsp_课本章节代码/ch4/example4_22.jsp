<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<HTML><BODY bgcolor=yellow>
  <% int a=100;long b=300;boolean c=true;
     out.println("<H1>这是标题1字体的大小</HT1>");
     out.println("<H2>这是标题2字体的大小</HT2>");
     out.print("<BR>");
     out.println(a);  out.println(b);  out.println(c);
  %>
  <Center>
  <p><Font size=2 >以下是一个表格</Font> 
  <%  out.print("<Font face=隶书 size=2 >");
      out.println("<Table Border >");
      out.println("<tr >");
            out.println("<th width=80>"+"姓名"+"</th>");
            out.println("<th width=60>"+"性别"+"</th>");
            out.println("<th width=200>"+"出生日期"+"</th>");
      out.println("</tr>");
      out.println("<tr >");
            out.println("<td >"+"刘甲一"+"</td>");
            out.println("<td >"+"男"+"</td>");
            out.println("<td >"+"1978年5月"+"</td>");
      out.println("</tr>");
      out.println("<tr>");
            out.println("<td >"+"林　霞"+"</td>");
            out.println("<td >"+"女"+"</td>");
            out.println("<td >"+"1979年8月"+"</td>");
     out.println("</tr>");
     out.println("</Table>");
     out.print("</Font>")  ;
  %>
  </Center>
</BODY></HTML>
