<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.CalendarBean" %> 
<HTML><BODY bgcolor=cyan><FONT size=4>
 <jsp:useBean id="rili" class="tom.jiafei.CalendarBean" scope="request"/>
  <FORM action="" method=post name=form>
   ѡ�����������:
  <Select name="year">
          <Option value="2009">2009��
          <Option value="2010">2010��
          <Option value="2011">2011��
          <Option value="2012">2012��
   </Select>
   ѡ���������·�:
          <Select name="month">
          <Option value="1">1��
          <Option value="2">2��
          <Option value="3">3��
          <Option value="4">4��
          <Option value="5">5��
          <Option value="6">6��
          <Option value="7">7��
          <Option value="8">8��
          <Option value="9">9��
          <Option value="10">10��
          <Option value="11">11��
          <Option value="12">12��
          </Select>
          <BR><BR>
          <INPUT TYPE="submit" value="�ύ���ѡ��" name="submit">
          </FORM>
          <jsp:setProperty  name="rili" property="*"/>
  <FONT color="red"><jsp:getProperty name="rili" property="year"/></FONT>��
  <FONT color="blue"><jsp:getProperty name="rili" property="month"/></FONT>��
  ������:
  <jsp:getProperty  name= "rili"  property="calendar" /> 
</FONT></BODY></HTML>
