<%@ tag pageEncoding="GB2312" %>
<%@ tag import="java.util.*" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="getNumber"%>
<%@ attribute name="number" required="true" %>
   <getNumber:SecondTag number="<%=number%>"/>
   <% out.println("�õ�"+number+"�������:");
       for(int i=0;i<listNumber.size();i++)                 //SecondTag�ļ����ص�listNumber����
              out.print((Integer)listNumber.get(i)+"  ");  
       out.println("<br>����С��������:");
       for(int i=0;i<listNumber.size();i++){
             for(int j=i+1;j<listNumber.size();j++){
                int a=((Integer)listNumber.get(i)).intValue();
                int b=((Integer)listNumber.get(j)).intValue(); 
                if(b<a){
                      Integer temp=(Integer)listNumber.get(i);
                      listNumber.set(i,(Integer)listNumber.get(j));
                      listNumber.set(j,temp);
                } 
            }  
       }
       for(int i=0;i<listNumber.size();i++)         
              out.print((Integer)listNumber.get(i)+"  ");  
       int sum=0;
      for(int i=0;i<listNumber.size();i++)
           sum=sum+((Integer)listNumber.get(i)).intValue();
      out.println("<br>�õ���"+number+"�������֮��:"+sum+"<br>");
%>
