<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.WriteFile" %> 
<jsp:useBean id="ok" class="tom.jiafei.WriteFile" scope="page"/>
<jsp:setProperty name="ok" property="filePath" param="filePath"/>
<jsp:setProperty name="ok" property="fileName" param="fileName"/>
<jsp:setProperty name="ok" property="fileContent" param="fileContent"/>
<HTML><BODY bgcolor=cyan><Font size=2>
 <FORM action="" method=post>
   请选择一个目录：<Select name="filePath" >
                     <Option value="C:/1000">C:/1000
                     <Option value="D:/2000">D:/2000
                   </Select> 
<BR>输入保存文件的名字：<Input type=text name="fileName" >
<BR>输入文件的内容：<BR>
   <TextArea name="fileContent" Rows="10" Cols="40"></TextArea>
<BR><Input type=submit value="提交">
</FORM>
<% if(ok.isSuccess()==true){
%>  你写文件成功,文件所在目录:
    <jsp:getProperty name="ok" property="filePath" />
    <BR>文件名字:
    <jsp:getProperty name="ok" property="fileName"/> 
<%
   }
%>
</FONT></BODY></HTML>