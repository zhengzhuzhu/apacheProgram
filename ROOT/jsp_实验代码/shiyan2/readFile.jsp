<!--传递的文件不存在，使用forward动作标记将用户转向error.jsp页面-->
<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.io.*" %>
<html>
    <body>
    	<p><font size=2 color="blue">
    		this is readFile.jsp.
    	</font>
    <font size=4>
    <%
    	String s=request.getParameter("file");
    	File fl=new File(s);
    	if(fl.exists()){
    		out.println("<br>文件"+s+"的内容：");
    		FileReader in=new FileReader(fl);
    		BufferedReader bin=new BufferedReader(in);
    		String line=null;
    		while((line=bin.readLine())!=null){
    			out.println("<br>"+line);
    		}
    	}
    	else{
    		%>
    		<jsp:forward page="error.jsp">
    		<jsp:param name="mess" value="File not found!"/>
    		</jsp:forward>
    		<%
    	}
    %>
    </font>
 </body>
</html>