<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="tom.jiafei.Triangle"%>
<jsp:useBean id="triangle" class="tom.jiafei.Triangle" scope="page"/>
<html>
	<body>
		<form action="" method="post">
			<p>���������εı�a<input type="text" name="sidea" value=0 >
			<p>���������εı�b<input type="text" name="sideb" value=0>
			<p>���������εı�c<input type="text" name="sidec" value=0>
			<input type="submit" value="�ύ" >
			<p>������������ε������ǣ�
			<jsp:setProperty name="triangle" property="*"/>
			<br>��a:<jsp:getProperty name="triangle" property="sidea"/>
				��b:<jsp:getProperty name="triangle" property="sideb"/>
				��c:<jsp:getProperty name="triangle" property="sidec"/>
			<p>�������ܹ�����������
				<jsp:getProperty name="triangle" property="triangle"/>
			<p>�����
				<jsp:getProperty name="triangle" property="area"/>
		</form>
	</body>
</html>
	
