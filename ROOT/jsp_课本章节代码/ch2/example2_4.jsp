<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY>
    <%!   int count=0;                //���ͻ������count
              synchronized void setCount() {     //synchronized���εķ���
                  count++;
              }
    %>
    <%     setCount();                                    //����Ƭ����ͬ������ 
               out.println("���ǵ�"+count+"�����ʱ�վ�Ŀͻ�");   
    %>
</BODY></HTML>
