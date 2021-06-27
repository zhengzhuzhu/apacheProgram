<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.Student"%>
<jsp:useBean id="zhang" class="tom.jiafei.Student" scope="page"/>
<HTML><BODY bgcolor=cyan><FONT size=4>
<jsp:setProperty name="zhang" property="name" value="张小三"/>
    名字是：<jsp:getProperty name="zhang" property="name"  />
<jsp:setProperty name="zhang" property="number" value="1999001"/>
<br>学号是：<jsp:getProperty name="zhang" property="number"/>
<jsp:setProperty name="zhang" property="height" value="<%=1.78%>"/>
<br>身高是：<jsp:getProperty name="zhang" property="height"/>米
<jsp:setProperty name= "zhang" property="weight" value="67.65"/>
<br>体重是：<jsp:getProperty name="zhang" property="weight"/>公斤
</FONT></BODY></HTML>
