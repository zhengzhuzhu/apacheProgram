<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.Rect"%>
<jsp:useBean id="rect" class="tom.jiafei.Rect" scope="page"/>
<jsp:setProperty  name= "rect"  property="*"/>
<HTML>
<BODY >
<FONT size=2>
<BR>��A�ǣ�<jsp:getProperty name="rect" property="sideA"/>
<BR>��B�ǣ�<jsp:getProperty name="rect" property="sideB"/>
<P>����ǣ�<jsp:getProperty name="rect" property="area"/>
</FONT>
</BODY>
</HTML>
