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
            out.println("调用getArea方法计算半径是"+r+"的园的面积：");
            double area=getArea(r);
            out.println(area);
            r=50;
            out.println("<BR>调用getLength方法计算半径是"+r+"的园的周长：");
            double length=getLength(r);
            out.println(length); 
    %>
</FONT></BODY></HTML>
