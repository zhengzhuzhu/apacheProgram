<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="tom.jiafei.*" %> 
 <jsp:useBean id="computer" class="tom.jiafei.ComputerBean" scope="session"/>
<HTML><BODY bgcolor=yellow><Font size=2>
  <jsp:setProperty name="computer" property="*"/>
  <FORM action="" method=post name=form>
    <Input type=text name="numberOne" 
           value=<jsp:getProperty name="computer" property="numberOne"/> size=5>
          <Select name="operator">
             <Option value="+">+
             <Option value="-">-
             <Option value="*">*
             <Option value="/">/
          </Select> 
    <Input type=text name="numberTwo" 
           value=<jsp:getProperty name="computer" property="numberTwo"/> size=5>
     =<jsp:getProperty name="computer" property="result"/> 
    <BR> <INPUT TYPE="submit" value="�ύ���ѡ��" name="submit">
  </FORM> 
</BODY></HTML>