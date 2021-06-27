<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY bgcolor=cyan><Font size=3>
<% String str=request.getParameter("number");
    try{
       double number=Double.parseDouble(str);
       if(number<0){
         response.setContentType("text/plain;charset=GB2312"); 
         out.println(number+"的平方:"+(number*number));
       }
       else if(number>=0&&number<100){
         response.setContentType("application/msword;charset=GB2312"); 
         out.println(number+"的立方:"+(number*number*number));
       }
       else{
         response.setStatus(404);
       }
    }
    catch(Exception e){
       response.sendRedirect("input.jsp");
    }
%>
</FONT></BODY></HTML>

