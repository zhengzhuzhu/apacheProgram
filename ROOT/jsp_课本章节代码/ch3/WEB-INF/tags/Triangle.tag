<%@ tag pageEncoding="GB2312" %>
<h4>����һ��Tag�ļ���������������ε������
<%@ attribute name="sideA" required="true" %>
<%@ attribute name="sideB" required="true" %>
<%@ attribute name="sideC" required="true" %>
  <%!   public String getArea(double a,double b,double c) {
                if(a+b>c&&a+c>b&&c+b>a) {
                     double p=(a+b+c)/2.0;
                     double area=Math.sqrt(p*(p-a)*(p-b)*(p-c)) ;
                     return "<BR>�����ε����:"+area;
                }
                else
                    return("<BR>"+a+","+b+","+c+"���ܹ���һ��������,�޷��������");
           }
  %>
  <%   out.println("<BR>JSPҳ�洫�ݹ����������ߣ�"+sideA+","+sideB+","+sideC);
          double a=Double.parseDouble(sideA);
          double b=Double.parseDouble(sideB);
          double c=Double.parseDouble(sideC);
          out.println(getArea(a,b,c));
  %>

