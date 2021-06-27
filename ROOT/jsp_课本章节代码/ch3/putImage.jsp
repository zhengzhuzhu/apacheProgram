<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="pic"%>
<html> <body>
  <Font size=2 color=blue>表格每行重复显示一幅图像</font>
  <table border=2>
     <pic:Image>
      <image src="a.jpg" width=80 height=60/>
    </pic:Image>
    <pic:Image>
      <image src="b.jpg" width=80 height=60/>
    </pic:Image>
     <pic:Image>
      <image src="c.jpg" width=80 height=60/>
    </pic:Image>
  </table>
  </body></html>
