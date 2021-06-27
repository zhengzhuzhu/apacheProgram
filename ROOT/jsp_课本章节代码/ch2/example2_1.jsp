<%@ page contentType="text/html;charset=GB2312" %>     <!-- jsp指令标记 -->
<%@ page import="java.util.Date"  %>                   <!-- jsp指令标记 -->
   <%!  
      Date date;                            // 数据声明
      int sum;
      public int getFactorSum(int n) {      // 方法声明 
           for(int i=1;i<n;i++)  {
                 if(n%i==0)
                     sum=sum+i;
           }
           return sum; 
      }
   %>
<HTML><BODY bgcolor=cyan>                    <!--html标记 --> 
<FONT size=4><P>程序片创建Date对象：
  <%  date=new Date();                       //java程序片
      out.println("<br>"+date+"<br>");
      int m=100;
  %>
  <%= m %>                                  <!-- Java表达式 --> 
     的因子之和是(不包括<%=m%>):
  <%= getFactorSum(m)  %>                   <!-- Java表达式 --> 
</FONT></BODY></HTML>


