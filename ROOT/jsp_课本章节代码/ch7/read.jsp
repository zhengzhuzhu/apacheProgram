<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.ReadFile" %> 
<HTML><BODY bgcolor=cyan><Font size=2>
<jsp:useBean id="file" class="tom.jiafei.ReadFile" scope="session"/>
<jsp:setProperty name="file" property="fileDir" param="fileDir"/>
<P>��Ŀ¼ <jsp:getProperty name="file" property="fileDir"/>
   �������ļ�:<BR> 
  <jsp:getProperty name="file" property="listFile"/>
<FORM action="" method=post name=form1>
  ����һ���ļ����֣�<input type=text name="fileName">  
  <Input type=submit value="�ύ">
</FORM>
  <jsp:setProperty name="file" property="fileName" param="fileName"/>
    �ļ�:<jsp:getProperty name="file" property="fileName"/>
    �������£�<BR>
  <jsp:getProperty name="file" property="readContent"/> 
<BR>   
  <A href="select.jsp">����ѡ��Ŀ¼</A>
</Body></HTML></HTML>
