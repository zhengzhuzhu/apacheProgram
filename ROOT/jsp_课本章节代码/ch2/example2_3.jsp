<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan ><FONT size=4>
    <%!  final double PI=Math.PI;
             double r;
            double getArea(double a){
                return PI*a*a;  
            }
            double getLength(double a) {
               return 2*PI*a;
           }
    %>
    <%   r=100;
            out.println("����getArea��������뾶��"+r+"��԰�������");
            double area=getArea(r);
            out.println(area);
            r=50;
            out.println("<BR>����getLength��������뾶��"+r+"��԰���ܳ���");
            double length=getLength(r);
            out.println(length); 
    %>
</FONT></BODY></HTML>
