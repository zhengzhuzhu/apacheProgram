<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.Student"%>
<jsp:useBean id="zhang" class="tom.jiafei.Student" scope="page"/>
<HTML><BODY bgcolor=cyan><FONT size=4>
<jsp:setProperty name="zhang" property="name" value="��С��"/>
    �����ǣ�<jsp:getProperty name="zhang" property="name"  />
<jsp:setProperty name="zhang" property="number" value="1999001"/>
<br>ѧ���ǣ�<jsp:getProperty name="zhang" property="number"/>
<jsp:setProperty name="zhang" property="height" value="<%=1.78%>"/>
<br>����ǣ�<jsp:getProperty name="zhang" property="height"/>��
<jsp:setProperty name= "zhang" property="weight" value="67.65"/>
<br>�����ǣ�<jsp:getProperty name="zhang" property="weight"/>����
</FONT></BODY></HTML>
