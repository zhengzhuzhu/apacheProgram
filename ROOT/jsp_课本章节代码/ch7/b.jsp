<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.Rect"%>
<jsp:useBean id="rect" class="tom.jiafei.Rect" scope="page"/>
<jsp:setProperty  name= "rect"  property="*"/>
<HTML>
<BODY >
<FONT size=2>
<BR>边A是：<jsp:getProperty name="rect" property="sideA"/>
<BR>边B是：<jsp:getProperty name="rect" property="sideB"/>
<P>面积是：<jsp:getProperty name="rect" property="area"/>
</FONT>
</BODY>
</HTML>
