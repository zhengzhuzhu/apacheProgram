<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY bgcolor=cyan>
<FONT size=3>
<H3>�˷���</H3>
	<!--����java����Ƭ�б���ʱ�����Ķ���-->
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
