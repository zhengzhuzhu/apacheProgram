<%@page contentType="text/html"%>
<!--使用setContentType动态修改Contenttype的值，响应MIME类型，浏览器提示使用某个电脑软件打开或保存当前页面-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <p>我正在学校response对象的</p>
    <br>setContentType方法
    <p>将当前页面保存为Word文档吗?</p>
    <form action="" method="get" name="form">
    	<input type="submit"value="yes" name="submit" />
    </form>
    <% String str=request.getParameter("submit");
    	if(str==null)
    		str="";
    	if(str.equal("yes"))
    	response.setContentType("application/msword;charset=GB2312");
    	%>
    </body>
</html>