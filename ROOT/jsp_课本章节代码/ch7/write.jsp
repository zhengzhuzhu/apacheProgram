<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.WriteFile" %> 
<jsp:useBean id="ok" class="tom.jiafei.WriteFile" scope="page"/>
<jsp:setProperty name="ok" property="filePath" param="filePath"/>
<jsp:setProperty name="ok" property="fileName" param="fileName"/>
<jsp:setProperty name="ok" property="fileContent" param="fileContent"/>
<HTML><BODY bgcolor=cyan><Font size=2>
 <FORM action="" method=post>
   ��ѡ��һ��Ŀ¼��<Select name="filePath" >
                     <Option value="C:/1000">C:/1000
                     <Option value="D:/2000">D:/2000
                   </Select> 
<BR>���뱣���ļ������֣�<Input type=text name="fileName" >
<BR>�����ļ������ݣ�<BR>
   <TextArea name="fileContent" Rows="10" Cols="40"></TextArea>
<BR><Input type=submit value="�ύ">
</FORM>
<% if(ok.isSuccess()==true){
%>  ��д�ļ��ɹ�,�ļ�����Ŀ¼:
    <jsp:getProperty name="ok" property="filePath" />
    <BR>�ļ�����:
    <jsp:getProperty name="ok" property="fileName"/> 
<%
   }
%>
</FONT></BODY></HTML>