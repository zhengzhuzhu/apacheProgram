<%@ page contentType="text/html;charset=GB2312" %>
<%@ page isThreadSafe="false" %>
<HTML><BODY>
  <%!  int i=1;   //被所有用户共享
  %>
  <%   
     for(int k=1;k<=100;k++){ 
        out.println(i);
        i++; 
     } 
  %>
</BODY></HTML>


