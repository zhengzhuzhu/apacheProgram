<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY bgcolor=cyan>
<FONT size=3>
<H3>乘法表</H3>
	<!--关于java程序片中遍历时变量的定义-->
    		<%
    			for(int j=1;j<=9;j++){
    				for(int i=1;i<=j;i++){
    					int n=i*j;
    					out.print(i+"x"+j+"="+n+" "); 	
						}		
				out.print("<br>");		
    			}			
    		%>
 </FONT>
</BODY>
</HTML>
