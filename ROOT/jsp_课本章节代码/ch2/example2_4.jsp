<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY>
    <%!   int count=0;                //被客户共享的count
              synchronized void setCount() {     //synchronized修饰的方法
                  count++;
              }
    %>
    <%     setCount();                                    //程序片调用同步方法 
               out.println("您是第"+count+"个访问本站的客户");   
    %>
</BODY></HTML>
