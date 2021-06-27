<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<HTML><BODY> 
<br>反复使用该页面提供的计算字符串长度功能的间隔时间必须大于5秒。<br>
<br>输入一个字符串，页面将计算它的长度：<br>
   <FORM action="" method="get" name=form>
     <INPUT TYPE="text" name="boy">
     <INPUT TYPE="submit" value="Enter">
   </FORM>
   <% int time=5;
      String str=null;
      str=request.getParameter("boy");
      if(str==null) str="";
      Date date=(Date)session.getAttribute("date"); 
      if(date==null){
          date=new Date();
          session.setAttribute("date",date);
      }
      date=(Date)session.getAttribute("date"); 
      Calendar calendar=Calendar.getInstance(); 
      calendar.setTime(date); 
      long timeInSession=calendar.getTimeInMillis();
      long currentTime=0;
      if(session.isNew()==false)
        currentTime=System.currentTimeMillis();
      session.setAttribute("date",new Date(currentTime));
      long intervalTime=(currentTime-timeInSession)/1000;
      if(intervalTime<=time&&session.isNew()==false){
         out.println("请"+time+"秒后再访问本页");
      }
      else{
         out.println("您输入的字符串的长度:"+str.length()); 
      }
   %>
</BODY></HTML>
