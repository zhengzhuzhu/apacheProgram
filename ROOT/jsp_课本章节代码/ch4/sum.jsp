<HTML><%@ page contentType="text/html;charset=GB2312" %>
<BODY bgcolor=cyan><FONT size=2>
 <% long sum=0;
    String s1=request.getParameter("sum");
    String s2=request.getParameter("n");
    if(s2.equals(""))
       s2="0";
    if(s1.equals("1")){
       int n=Integer.parseInt(s2);
       for(int i=1;i<=n;i++)
          sum=sum+i;
    }
    else if(s1.equals("2")){
       int n=Integer.parseInt(s2);
       for(int i=1;i<=n;i++)
          sum=sum+i*i;
    }
    else if(s1.equals("3")){
       int n=Integer.parseInt(s2);
       for(int i=1;i<=n;i++)
          sum=sum+i*i*i;
    }
 %>
<P>������ͽ���ǣ�<%=sum%>��
</FONT></BODY></HTML>
