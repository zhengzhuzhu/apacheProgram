<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    	<%
    		long sum=0;
    		String s1=request.getParameter("sum");
    		String s2=request.getParameter("n");
    		if(s2.equals(""))
    			s2="0";
    		if(s1.equals("1"))
    		{
    			int n=Integer.parseInt(s2);
    		for(int i=1;i<=n;i++)
    			sum=sum+i;
    		}
    		else fi(s1.equals("2")){
    			int n=Integer.parseInt(s2);
    			for(int i=1;i<=n;i++)
    				sum=sum+i*i;
    		}
    		else if(s1.equals("3")){
    			int n=Integer.parseInt(s2);
    			for(int i=1;i<=n;i++){
    				sum=sum+i*i*i;
    			}
    		}
    	%>
    	<p>你的求和结果为：<%=sum%></p>
 	</body>
</html>