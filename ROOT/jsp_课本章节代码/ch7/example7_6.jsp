<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.StudentTwo"%>
<jsp:useBean id="zhang" class="tom.jiafei.StudentTwo" scope="page"/>
<HTML><BODY ><FONT size=2>
<FORM action="" Method="post">
    输入姓名:<Input type=text name="xingming">
<br>输入学号: <Input type=text name="xuehao">
<br>输入身高: <Input type=text name="shenggao">
<br>输入体重:<Input type=text name="tizhong">
    <Input type=submit value="提交">
</FORM>
<jsp:setProperty name="zhang" property="name" param="xingming"/>
<jsp:setProperty name="zhang" property="number" param="xuehao"/>
<jsp:setProperty name="zhang" property="height" param="shenggao"/>
<jsp:setProperty name="zhang" property="weight" param="tizhong"/>
    名字是：<jsp:getProperty name="zhang" property="name"/>
<br>学号是：<jsp:getProperty name="zhang" property="number"/>
<br>身高是：<jsp:getProperty name="zhang" property="height"/>米
<br>体重是：<jsp:getProperty name="zhang" property="weight"/>公斤
