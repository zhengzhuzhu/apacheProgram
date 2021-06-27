<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.CalendarBean" %> 
<HTML><BODY bgcolor=cyan><FONT size=4>
 <jsp:useBean id="rili" class="tom.jiafei.CalendarBean" scope="request"/>
  <FORM action="" method=post name=form>
   选择日历的年份:
  <Select name="year">
          <Option value="2009">2009年
          <Option value="2010">2010年
          <Option value="2011">2011年
          <Option value="2012">2012年
   </Select>
   选择日历的月份:
          <Select name="month">
          <Option value="1">1月
          <Option value="2">2月
          <Option value="3">3月
          <Option value="4">4月
          <Option value="5">5月
          <Option value="6">6月
          <Option value="7">7月
          <Option value="8">8月
          <Option value="9">9月
          <Option value="10">10月
          <Option value="11">11月
          <Option value="12">12月
          </Select>
          <BR><BR>
          <INPUT TYPE="submit" value="提交你的选择" name="submit">
          </FORM>
          <jsp:setProperty  name="rili" property="*"/>
  <FONT color="red"><jsp:getProperty name="rili" property="year"/></FONT>年
  <FONT color="blue"><jsp:getProperty name="rili" property="month"/></FONT>月
  的日历:
  <jsp:getProperty  name= "rili"  property="calendar" /> 
</FONT></BODY></HTML>
