<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.QueryBean" %> 
<jsp:useBean id="base" class="tom.jiafei.QueryBean" scope="page"/>
<jsp:setProperty name="base" property="databaseName" value="warehouse"/>
<jsp:setProperty name="base" property="tableName" value="product"/>
<jsp:setProperty name="base" property="user" value="root"/>
<jsp:setProperty name="base" property="password" value=""/>
<HTML><Body bgcolor=cyan><Font size=2>
 在<jsp:getProperty name="base" property="tableName"/>表查询到记录:
<BR> <jsp:getProperty name="base" property="queryResult"/>
</Font></Body></HTML>