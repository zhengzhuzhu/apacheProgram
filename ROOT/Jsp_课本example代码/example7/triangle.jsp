<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="tom.jiafei.Triangle"%>
<jsp:useBean id="triangle" class="tom.jiafei.Triangle" scope="page"/>
<html>
	<body>
		<form action="" method="post">
			<p>输入三角形的边a<input type="text" name="sidea" value=0 >
			<p>输入三角形的边b<input type="text" name="sideb" value=0>
			<p>输入三角形的边c<input type="text" name="sidec" value=0>
			<input type="submit" value="提交" >
			<p>你给出的三角形的三边是：
			<jsp:setProperty name="triangle" property="*"/>
			<br>边a:<jsp:getProperty name="triangle" property="sidea"/>
				边b:<jsp:getProperty name="triangle" property="sideb"/>
				边c:<jsp:getProperty name="triangle" property="sidec"/>
			<p>这三边能构成三角形吗？
				<jsp:getProperty name="triangle" property="triangle"/>
			<p>面积：
				<jsp:getProperty name="triangle" property="area"/>
		</form>
	</body>
</html>
	
