<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.StudentTwo"%>
<jsp:useBean id="zhang" class="tom.jiafei.StudentTwo" scope="page"/>
<HTML><BODY ><FONT size=2>
<FORM action="" Method="post">
    ��������:<Input type=text name="xingming">
<br>����ѧ��: <Input type=text name="xuehao">
<br>�������: <Input type=text name="shenggao">
<br>��������:<Input type=text name="tizhong">
    <Input type=submit value="�ύ">
</FORM>
<jsp:setProperty name="zhang" property="name" param="xingming"/>
<jsp:setProperty name="zhang" property="number" param="xuehao"/>
<jsp:setProperty name="zhang" property="height" param="shenggao"/>
<jsp:setProperty name="zhang" property="weight" param="tizhong"/>
    �����ǣ�<jsp:getProperty name="zhang" property="name"/>
<br>ѧ���ǣ�<jsp:getProperty name="zhang" property="number"/>
<br>����ǣ�<jsp:getProperty name="zhang" property="height"/>��
<br>�����ǣ�<jsp:getProperty name="zhang" property="weight"/>����
