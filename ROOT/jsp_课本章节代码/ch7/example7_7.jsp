<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.ListFile" %>
<jsp:useBean id="file" class="tom.jiafei.ListFile" scope="request"/>
<HTML><BODY ><FONT size=2>
<FORM action="" Method="post" >
  输入文件的扩展名:<Input type=text name="extendsName">
 <Input type=submit value="提交">
</FORM>
 <jsp:setProperty name="file" property="*"/>
 当前JSP页面所在目录中，扩展名是：
<jsp:getProperty name="file" property="extendsName"/>
 的文件有：
 <br><jsp:getProperty name="file" property="allFileName"/>  
</FONT></BODY></HTML>
