<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.Test" %>
 <jsp:useBean id="test" class="tom.jiafei.Test" scope="session"/>
<HTML><BODY bgcolor=cyan>
<FORM action="" method="post">
 ѡ�������ļ�:
 <Select name="filename"  value="A.txt">
          <Option value="d:/2000/A.txt" >A.txt
          <Option value="d:/1000/B.txt"> B.txt
          <Option value="d:/1000/C.txt"> C.txt
 </Select>
<Input type="submit" name="sub" value="ȷ��">
</FORM>
 <%-- bean�����ļ������� ,��ֻ���ύ��������Ӧ�ı���bean���ܵ��ļ����֣�--%>
  <jsp:setProperty  name="test"  property="filename" param="filename"/>
  ��ѡ��������ǣ�<jsp:getProperty  name= "test" property="filename"/>
<%-- ͨ��bean��ȡ���������--%>
<br><Font size=3 color=blue>
    <jsp:getProperty name="test" property="testContent"/>
    </font>
<BR><FORM action="" method="post">
     ��ѡ��
    <Input type="radio" name="selection" value="A">A
    <Input type="radio" name="selection" value="B">B
    <Input type="radio" name="selection" value="C">C
    <Input type="radio" name="selection" value="D">D
    <Input type="submit" name="tijiao" value="�ύ��">
</FORM>
<%-- ����ı�ǩֻ���ύ����Ӧ�ı��ű�ִ�У�--%>
  <jsp:setProperty name="test" property="selection"/>
  �������ۼƵ÷֣�<jsp:getProperty name="test" property="score"/>
</BODY></HTML>
