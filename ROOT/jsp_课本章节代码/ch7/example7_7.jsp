<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.ListFile" %>
<jsp:useBean id="file" class="tom.jiafei.ListFile" scope="request"/>
<HTML><BODY ><FONT size=2>
<FORM action="" Method="post" >
  �����ļ�����չ��:<Input type=text name="extendsName">
 <Input type=submit value="�ύ">
</FORM>
 <jsp:setProperty name="file" property="*"/>
 ��ǰJSPҳ������Ŀ¼�У���չ���ǣ�
<jsp:getProperty name="file" property="extendsName"/>
 ���ļ��У�
 <br><jsp:getProperty name="file" property="allFileName"/>  
</FONT></BODY></HTML>
