<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="computer"%>
<HTML>
<BODY bgcolor=yellow>
  <Font size=5>
  <FORM action="" method=post name=form>
    输入运算数、选择运算符号:<br>
    <Input type=text name="numberOne" size=6>
       <Select name="operator" >
          <Option value="+">+
          <Option value="-">-
          <Option value="*">*
          <Option value="/">/
       </Select> 
    <Input type=text name="numberTwo"  size=6>
    <BR> <INPUT TYPE="submit" value="提交你的选择" name="submit">
  </FORM> 
<% String a=request.getParameter("numberOne");
   String b=request.getParameter("numberTwo");
   String operator=request.getParameter("operator");
   if(a==null||b==null){
      a="";
      b="";
   }
   if(a.length()>0&&b.length()>0){
%>    <computer:Computer numberA="<%=a%>" numberB="<%=b%>" operator="<%=operator%>"/> 
      计算结果：<%=a%><%=operator%><%=b%>=<%=result%>
<% }
%>
</Font></BODY></HTML>
