<%@ page contentType="text/html;charset=gb2312"%>
<html><body>
<form action="lookAverage" Method="post"> <!--servlet����computerAverage��ȡ������-->
	<p>�������������Ĵ���ƽ��ֵ
	<br>����������<input type=text name="firstNumber"  size=6>
	����������<input type=text name="secondNumber" size=6>
	<input type=submit value="�ύ">
</form>
<form action="lookAverage" Method="get">
	<p>�������������ļ���ƽ��ֵ
	<br>����������<input type=text name="firstNumber"  size=6>
	����������<input type=text name="secondNumber" size=6>
	<input type=submit value="�ύ">
</form>
</body></html>