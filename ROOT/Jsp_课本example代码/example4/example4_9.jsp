<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    	<form action="show.jsp" method="post"name=form>
    		<br>选择一副图像:<select name="image">
    			<option value="car.jpg">汽车
    			<option value="person.jpg">人物
    		</select>
    	<br>选择视频或音乐：
    	<select name="video">
    		<option value="happy.wav">好汉歌
    		<option value="moon.wav">故乡</option>
    		<option value="clock.avi"></option>表</option>
    	</select>
    	<br /><input type="submit" value="提交选择"name="submit" />
    	</form>
 	</body>
</html>