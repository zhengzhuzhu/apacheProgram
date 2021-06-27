<!--使用inclu标记动态加载文件，使用forward实现页面的转向-->
<!--当include标签没有参数时，配对标签不能换行,中间不能换行-->
<%@ page contentType="text/html;charset=gb2312" %>
<html>
    <body>
<!--include动作标记加载jsp页面-->
<!--param子标记向被加载jsp传递信息-->
    	读取名字为ok.txt的文件：
    	<jsp:include page="readFile.jsp">
	   <jsp:param name="file" value="D:/apache-tomcat-8.0.50/webapps/shiyan2/ok.txt"/>
	</jsp:include>
 	</body>
</html>
