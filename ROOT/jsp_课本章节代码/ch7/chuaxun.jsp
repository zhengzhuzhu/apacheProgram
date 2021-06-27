<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*" %> 
<%@ page import="java.sql.*" %>
<jsp:useBean id="conSet" class="tom.jiafei.ApplcationCon" scope="application"/>
<jsp:useBean id="inquire" class="tom.jiafei.UseConBean" scope="request"/>
<% Connection connection=conSet.getOneConnetion(); 
   inquire.setConnection(connection);
%>
<jsp:setProperty name="inquire" property="databaseName" value="Warehouse"/>
<jsp:setProperty name="inquire" property="tableName" value="product"/>
<jsp:setProperty name="inquire" property="user" value="sa"/>
<jsp:setProperty name="inquire" property="secret" value="sa"/>
<HTML><Body bgcolor=cyan><Font size=2>
 你连接的数据库是<jsp:getProperty name="inquire" property="databaseName"/>
 在<jsp:getProperty name="inquire" property="tableName"/>表查询到记录:
<BR> <jsp:getProperty name="inquire" property="queryResult"/>
 <%  conSet.putBackOneConnetion(connection);
 %> 
</Font></Body></HTML>
