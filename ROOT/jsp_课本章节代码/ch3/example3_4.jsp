<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="show"%>
<HTML><BODY bgcolor=cyan>
   <% LinkedList listName=new LinkedList();
          LinkedList listScore=new LinkedList();
          listName.add("����");
          listScore.add(new Double(87));  
          listName.add("����");
          listScore.add(new Double(65)); 
          listName.add("��С��");
          listScore.add(new Double(57));  
          listName.add("������");
          listScore.add(new Double(99)); 
          listName.add("�����");
          listScore.add(new Double(88));   
   %>    
  <p>�ɼ���:
  <show:Sort title="����" item="�ߵ���ѧ" 
                    listName="<%=listName%>" listScore="<%=listScore%>"/>
  </BODY></HTML>
