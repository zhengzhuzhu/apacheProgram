
<%@ page language="java" contentType="text/html; charset=gb2312"%>

<!DOCTYPE html>

<html>

<head>


<title>����</title>

<style type="text/css">

	*{margin: 0;padding: 0;}

	form{margin: 0 auto;padding:15px; width: 300px;height:300px;text-align: center;}

	#submit{padding: 10px}

	#submit input{width: 50px;height: 24px;}

</style>

</head>

<body>

	<div class="wrapper">

		<form action="<%=request.getContextPath()%>/loginDemo" method="post">

			<label>�û���:</label>

				<input type="text" name="userName" value="${param.userName}"/><br><br>

			<label>���룺</label>

				<input type="password" name="password"/><br>

				

			<font color="red">

				<%

					if(request.getAttribute("message")!= null){

						out.print(request.getAttribute("message"));

					}

				%>

			</font>

			

			<div id="submit">

				<input type="submit" value="��¼"/>

			</div>

		</form>

	

	</div>

</body>

</html>
