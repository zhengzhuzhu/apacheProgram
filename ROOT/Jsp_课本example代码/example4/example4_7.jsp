<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    	<font size=6>
    	<form action="sum.jsp" method="post" name="form">
    		选择计算和的方式：<br />
    		<select name="sum" size="4">
    			<Option selected value="1">计算1到N的连续和
    			<Option value="2">计算1到n的平方和</Option>
    			<Option value="3">计算1到n的立方和
    		</select>
    		<br>选择n的值：<br>
    		<select name="n">
    			<Option value="10">n=10</Option>
    			<Option value="20">n=20</Option>
    			<Option value="30">n=30</Option>
    			<Option value="40">n=40</Option>
    			<Option value="50">n=50</Option>
    			<Option value="60">n=60</Option>
    		</select>
    		<br><input type="submit" value="提交你的选择" name="submit">
    	</form>
    	</font>
 	</body>
</html>