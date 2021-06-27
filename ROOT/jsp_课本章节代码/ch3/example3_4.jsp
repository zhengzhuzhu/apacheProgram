<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="show"%>
<HTML><BODY bgcolor=cyan>
   <% LinkedList listName=new LinkedList();
          LinkedList listScore=new LinkedList();
          listName.add("张三");
          listScore.add(new Double(87));  
          listName.add("李四");
          listScore.add(new Double(65)); 
          listName.add("刘小记");
          listScore.add(new Double(57));  
          listName.add("王大林");
          listScore.add(new Double(99)); 
          listName.add("孙进步");
          listScore.add(new Double(88));   
   %>    
  <p>成绩单:
  <show:Sort title="姓名" item="高等数学" 
                    listName="<%=listName%>" listScore="<%=listScore%>"/>
  </BODY></HTML>
