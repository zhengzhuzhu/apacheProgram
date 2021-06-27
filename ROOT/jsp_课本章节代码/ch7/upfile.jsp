<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.UpFile" %> 
<jsp:useBean id="upFile" class="tom.jiafei.UpFile" scope="session"/>
<HTML><BODY bgcolor=yellow size=3> 
   <br>选择要上传的文件：<br>
   <FORM action="" method="post" ENCTYPE="multipart/form-data">
      <INPUT type=FILE name="boy" size="30"> 
      <BR> <INPUT type="submit" name ="g" value="提交">
   </FORM>
   <%  upFile.setRequest(request);
       upFile.setSession(session);
   %>
  <jsp:getProperty  name="upFile" property="upFileMessage"/>
  <BR> <img src=image/<jsp:getProperty name="upFile" property="showImage"/> 
                                            width=224 height=374></img>
</BODY></HTML>