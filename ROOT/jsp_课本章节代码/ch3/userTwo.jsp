<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import ="java.text.*" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="computer"%>
<HTML><BODY bgcolor=cyan>
  <computer:GiveRoot coefficientA="3" coefficientB="6" coefficientC="-2"/>
  <h4> ���̵ĸ�����5λС����,�������������Ļ�:
  <%    NumberFormat f=NumberFormat.getInstance();
            f.setMaximumFractionDigits(5);
           if(rootOne!=null&&rootTwo!=null){
              double r1=rootOne.doubleValue();   //rootOne��GetRoot.tag�ļ����ص�Double�Ͷ���
              double r2=rootTwo.doubleValue();  //rootTwo��GetRoot.tag�ļ����ص�Double�Ͷ���
              String s1=f.format(r1);
              String s2=f.format(r2);
              out.println("<br>��1:"+s1);
              out.println("<br>��2:"+s2);
              double ji=r1*r2;
              out.println("<br>��1���2֮��:"+ji);
          }
          else{
               out.println("<br>����û��ʵ��");
          } 
  %>  
</BODY></HTML>
