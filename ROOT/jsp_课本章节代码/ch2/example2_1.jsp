<%@ page contentType="text/html;charset=GB2312" %>     <!-- jspָ���� -->
<%@ page import="java.util.Date"  %>                   <!-- jspָ���� -->
   <%!  
      Date date;                            // ��������
      int sum;
      public int getFactorSum(int n) {      // �������� 
           for(int i=1;i<n;i++)  {
                 if(n%i==0)
                     sum=sum+i;
           }
           return sum; 
      }
   %>
<HTML><BODY bgcolor=cyan>                    <!--html��� --> 
<FONT size=4><P>����Ƭ����Date����
  <%  date=new Date();                       //java����Ƭ
      out.println("<br>"+date+"<br>");
      int m=100;
  %>
  <%= m %>                                  <!-- Java���ʽ --> 
     ������֮����(������<%=m%>):
  <%= getFactorSum(m)  %>                   <!-- Java���ʽ --> 
</FONT></BODY></HTML>


