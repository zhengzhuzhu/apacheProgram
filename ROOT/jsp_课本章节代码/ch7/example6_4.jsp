<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.Circle2"%>
<HTML><BODY bgcolor=cyan><FONT size=4>
   <jsp:useBean id="apple" class="tom.jiafei.Circle2" scope="page" />
    圆的半径是：<jsp:getProperty  name= "apple"  property= "radius"  />
<br>圆的面积是：<jsp:getProperty name= "apple"  property= "circleArea" />
<br>圆的周长是： <jsp:getProperty name= "apple"  property= "circleLength" />
</FONT></BODY></HTML>


