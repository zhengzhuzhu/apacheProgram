<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ok"%>
<html><body>
<p>
<Font size=2>Tag标记嵌套显示学生名单:</Font>
<table border=1>
   <ok:Biaoge color="#a9f002" name="姓名" sex="性别">
       <ok:Biaoge  color="cyan" name="张三" sex="男"/>
       <ok:Biaoge  color="#afc0ff" name="李小花" sex="女"/>
       <ok:Biaoge  color="pink" name="孙六" sex="男"/>
       <ok:Biaoge  color="#ffaaef" name="赵扬" sex="女"/>
   </ok:Biaoge>
</table>
</body></html>