<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.UpFile" %> 
<jsp:useBean id="upFile" class="tom.jiafei.UpFile" scope="session"/>
<HTML><BODY bgcolor=yellow size=3> 
   <br>ѡ��Ҫ�ϴ����ļ���<br>
   <FORM action="" method="post" ENCTYPE="multipart/form-data">
      <INPUT type=FILE name="boy" size="30"> 
      <BR> <INPUT type="submit" name ="g" value="�ύ">
   </FORM>
   <%  upFile.setRequest(request);
       upFile.setSession(session);
   %>
  <jsp:getProperty  name="upFile" property="upFileMessage"/>
  <BR> <img src=image/<jsp:getProperty name="upFile" property="showImage"/> 
                                            width=224 height=374></img>
</BODY></HTML>