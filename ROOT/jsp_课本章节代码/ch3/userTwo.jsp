<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import ="java.text.*" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="computer"%>
<HTML><BODY bgcolor=cyan>
  <computer:GiveRoot coefficientA="3" coefficientB="6" coefficientC="-2"/>
  <h4> 方程的根保留5位小数点,并计算两个根的积:
  <%    NumberFormat f=NumberFormat.getInstance();
            f.setMaximumFractionDigits(5);
           if(rootOne!=null&&rootTwo!=null){
              double r1=rootOne.doubleValue();   //rootOne是GetRoot.tag文件返回的Double型对象
              double r2=rootTwo.doubleValue();  //rootTwo是GetRoot.tag文件返回的Double型对象
              String s1=f.format(r1);
              String s2=f.format(r2);
              out.println("<br>根1:"+s1);
              out.println("<br>根2:"+s2);
              double ji=r1*r2;
              out.println("<br>根1与根2之积:"+ji);
          }
          else{
               out.println("<br>方程没有实根");
          } 
  %>  
</BODY></HTML>
