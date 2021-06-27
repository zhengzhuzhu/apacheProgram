<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import ="java.text.*" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="showTime"%>
<HTML><BODY bgcolor=cyan>
    <showTime:GiveDate />   <%--Tag标记--%>
 <h3>当前时间:</h3>
    <%= time %>                    <%--使用GiveDate标记文件返回的time对象 --%>
</BODY></HTML>
