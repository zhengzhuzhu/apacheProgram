<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<HTML><BODY>
     <%! Vector<String> v=new Vector<String>();
         int i=0; 
         ServletContext  application;
         synchronized void sendMessage(String s){
            application=getServletContext();;
            v.add(s);
            application.setAttribute("Mess",v); 
         }
     %> 
     <% String name=request.getParameter("peopleName");
        String title=request.getParameter("Title");
        String messages=request.getParameter("messages");
           if(name==null)
              name="guest"+(int)(Math.random()*10000);
           if(title==null)
              title="�ޱ���";
           if(messages==null)
              messages="����Ϣ";
          SimpleDateFormat matter=new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
          String time=matter.format(new Date());
          String s=name+"#"+title+"#"+time+"#"+messages; 
          sendMessage(s);
          out.print("������Ϣ�Ѿ��ύ��");
     %>
  <A HREF="submit.jsp" >�������԰�</A> 
  <A HREF="showMessage.jsp" >�鿴���԰�</A>
</BODY></HTML>
