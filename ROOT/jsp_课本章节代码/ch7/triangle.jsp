<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.Triangle"%>
<jsp:useBean id="triangle" class="tom.jiafei.Triangle" scope="page"/>
<HTML><BODY ><FONT size=2>
<FORM action="" Method="post">
<P>���������εı�A:<Input type=text name="sideA" value=0>
<P>���������εı�B:<Input type=text name="sideB" value=0>
<P>���������εı�C:<Input type=text name="sideC" value=0>
<Input type=submit value="�ύ">
<P>����������ε������ǣ�
<jsp:setProperty  name= "triangle"  property="*" />
<BR>��A�ǣ�<jsp:getProperty name="triangle" property="sideA"/>
<BR>��B�ǣ�<jsp:getProperty name="triangle" property="sideB"/>
<BR>��C�ǣ�<jsp:getProperty  name= "triangle"  property="sideC"/>
<P>���������ܹ���һ����������
<jsp:getProperty name="triangle" property="triangle"/>
<P>����ǣ�<jsp:getProperty name="triangle" property="area"/>
</FONT></BODY></HTML>
