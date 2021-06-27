<%@ page contentType="text/html;charset=gb2312"%>
<html><body>
<form action="lookAverage" Method="post"> <!--servlet对象computerAverage，取虚拟名-->
	<p>计算两个正数的代数平均值
	<br>输入正数：<input type=text name="firstNumber"  size=6>
	输入正数：<input type=text name="secondNumber" size=6>
	<input type=submit value="提交">
</form>
<form action="lookAverage" Method="get">
	<p>计算两个正数的几何平均值
	<br>输入正数：<input type=text name="firstNumber"  size=6>
	输入正数：<input type=text name="secondNumber" size=6>
	<input type=submit value="提交">
</form>
</body></html>