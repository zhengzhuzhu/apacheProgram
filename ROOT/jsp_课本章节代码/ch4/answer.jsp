<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><Font size=2>
   <%  int score=0;

       request.setCharacterEncoding("GB2312");

       String countryName=request.getParameter("R"); 
       String itemNames[]=request.getParameterValues("item");
       String secretMess=request.getParameter("secret");
       if(countryName.equals("巴西"))
           score++;
       if(itemNames==null)
           out.print("没有选择球队<br>");
       else if(itemNames.length>=2){
          if(itemNames[0].equals("法国国家队")&&itemNames[1].equals("巴西国家队"))
               score++;
       }
       out.print("您的得分:"+score);
       out.print("<br>您提交的答案一:"+countryName);
       out.print("<br>您提交的答案二:");
       if(itemNames!=null)
          for(int k=0;k<itemNames.length;k++)
             out.println(" "+itemNames[k]);
       out.println("<br> 您提交的隐藏信息:"+secretMess);  
 %>
</FONT></BODY></HTML>
