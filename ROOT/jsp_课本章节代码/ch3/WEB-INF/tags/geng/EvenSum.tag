<%@tag pageEncoding="gb2312" %>
<P>����һ��Tab�ļ����������1��100�ڵ�ż��֮�ͣ�
  <%  int sum=0,i=1;
         for(i=1;i<=100;i++){
            if(i%2==0)
               sum=sum+i;
         }
         out.println(sum);
  %>
