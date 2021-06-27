<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*"%>
<jsp:useBean id="play" class="tom.jiafei.Play" scope="session"/>
<jsp:setProperty  name="play" property="imageNumber" param="imageNumber"/>
<jsp:getProperty  name="play" property="playImage"/>  
<HTML><BODY bgcolor=cyan><Font size=2>
 <Table ><FORM action="" method=post>
  <tr>
  <td><Input type=submit name="ok" value="上一张"></td>
   <Input type="hidden" name="imageNumber" value="<%=play.getImageNumber()-1%>">
   </FORM>
   <FORM action="" method=post>
   <td><Input type=submit name="ok" value="下一张"></td>
   <Input type="hidden" name="imageNumber" value="<%=play.getImageNumber()+1%>">
   </tr>
   </FORM>
  </Table>
</Font></BODY></HTML>