<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="computer"%>
<HTML>
�����������ֵa,b,c(���������ε����߻����ε��ϵס��µ׺͸�)��
<BODY color=cyan>
    <FORM action="" method=get name=form>
    <table>
    <tr>  <td>������ֵa��</td>
           <td><INPUT type="text" name="a"></td>
    </tr>
   <tr>   <td>������ֵb��</td>
           <td><INPUT type="text" name="b"></td>
    </tr>
   <tr>   <td>������ֵc��</td>
           <td><INPUT type="text" name="c"></td>
   </tr>
   </table>
   <INPUT type="radio" name="R" value="triangle" >���������� 
   <INPUT type="radio" name="R" value="lader">�������� 
   <br> <INPUT TYPE="submit" value="�ύ" name=submit>
  </FORM>
  <%  String a=request.getParameter("a");
      String b=request.getParameter("b");
      String c=request.getParameter("c");
      String cd=request.getParameter("R");
      if(a==null||b==null||c==null){
         a="0";
         b="0";
         c="0";
         cd="0";
      }
      if(a.length()>0&&b.length()>0&&c.length()>0){
  %>   <computer:GetArea numberA="<%=a%>" numberB="<%=b%>" 
numberC="<%=c%>" condition="<%=cd%>"/>
       <br> <%=message%>
       <br> <%=area %>
  <% }
  %>
</BODY></HTML>
