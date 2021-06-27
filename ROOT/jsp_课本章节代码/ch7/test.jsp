<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.Test" %>
 <jsp:useBean id="test" class="tom.jiafei.Test" scope="session"/>
<HTML><BODY bgcolor=cyan>
<FORM action="" method="post">
 选择试题文件:
 <Select name="filename"  value="A.txt">
          <Option value="d:/2000/A.txt" >A.txt
          <Option value="d:/1000/B.txt"> B.txt
          <Option value="d:/1000/C.txt"> C.txt
 </Select>
<Input type="submit" name="sub" value="确定">
</FORM>
 <%-- bean设置文件的名字 ,但只有提交了下面相应的表单后bean才能到文件名字：--%>
  <jsp:setProperty  name="test"  property="filename" param="filename"/>
  你选择的试题是：<jsp:getProperty  name= "test" property="filename"/>
<%-- 通过bean获取试题的内容--%>
<br><Font size=3 color=blue>
    <jsp:getProperty name="test" property="testContent"/>
    </font>
<BR><FORM action="" method="post">
     请选择：
    <Input type="radio" name="selection" value="A">A
    <Input type="radio" name="selection" value="B">B
    <Input type="radio" name="selection" value="C">C
    <Input type="radio" name="selection" value="D">D
    <Input type="submit" name="tijiao" value="提交答案">
</FORM>
<%-- 下面的标签只有提交了相应的表单才被执行：--%>
  <jsp:setProperty name="test" property="selection"/>
  您现在累计得分：<jsp:getProperty name="test" property="score"/>
</BODY></HTML>
