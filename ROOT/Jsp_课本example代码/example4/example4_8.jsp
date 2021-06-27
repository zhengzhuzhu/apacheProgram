<%@page contentType="text/html"%>
<!--可尝试制作考试系统（加分）：单选、多选、计算得分、隐藏信息-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <form action="answer.jsp" method="post" name=form>
    	<table border="1">
    		<tr>
    			<th>”贝利“是哪个国家的人？</th>
    			<th>曾获得过世界杯冠军的球队？</th>
    		</tr>
    		<tr>
    			<td><!--radio是单选框-->
    				<input type="radio" name="R" value="巴西" />巴西
    				<input type="radio" name="R" value="德国" />德国
    				<input type="radio" name="R" value="美国" />美国
    				<input type="radio" name="R" value="法国" checked="ok"/>法国
    			</td>
    			<td><!--checkbox是多选框-->
    				<input type="checkbox" name="item" value="法国国家队" />法国国家队
    				<input type="checkbox" name="item" value="中国国家队" />中国国家队
    				<input type="checkbox" name="item" value="巴西国家队" />巴西国家队
    				<input type="checkbox" name="item" value="美国国家队" />美国国家队
    				<input TYPE="hidden" value="喜欢世界杯" name="secret" />
    			</td>
    		</tr>
    		<tr>
    			<td>
    				<input TYPE="submit" value="提交"name="submit" />
    			</td>
    			<td><input TYPE="reset" value="重置"></td><!--将页面的选择重置为初始值-->
    		</tr>
    	</table>
    </form>
 	</body>
</html>