<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<HTML><BODY> 
<br>����ʹ�ø�ҳ���ṩ�ļ����ַ������ȹ��ܵļ��ʱ��������5�롣<br>
<br>����һ���ַ�����ҳ�潫�������ĳ��ȣ�<br>
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
         out.println("��"+time+"����ٷ��ʱ�ҳ");
      }
      else{
         out.println("��������ַ����ĳ���:"+str.length()); 
      }
   %>
</BODY></HTML>
