<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.Circle2"%>
<HTML><BODY bgcolor=cyan><FONT size=4>
   <jsp:useBean id="apple" class="tom.jiafei.Circle2" scope="page" />
    Բ�İ뾶�ǣ�<jsp:getProperty  name= "apple"  property= "radius"  />
<br>Բ������ǣ�<jsp:getProperty name= "apple"  property= "circleArea" />
<br>Բ���ܳ��ǣ� <jsp:getProperty name= "apple"  property= "circleLength" />
</FONT></BODY></HTML>


