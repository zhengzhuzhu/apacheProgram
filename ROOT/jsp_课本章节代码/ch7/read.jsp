<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.ReadFile" %> 
<HTML><BODY bgcolor=cyan><Font size=2>
<jsp:useBean id="file" class="tom.jiafei.ReadFile" scope="session"/>
<jsp:setProperty name="file" property="fileDir" param="fileDir"/>
<P>该目录 <jsp:getProperty name="file" property="fileDir"/>
   有如下文件:<BR> 
  <jsp:getProperty name="file" property="listFile"/>
<FORM action="" method=post name=form1>
  输入一个文件名字：<input type=text name="fileName">  
  <Input type=submit value="提交">
</FORM>
  <jsp:setProperty name="file" property="fileName" param="fileName"/>
    文件:<jsp:getProperty name="file" property="fileName"/>
    内容如下：<BR>
  <jsp:getProperty name="file" property="readContent"/> 
<BR>   
  <A href="select.jsp">重新选择目录</A>
</Body></HTML></HTML>
