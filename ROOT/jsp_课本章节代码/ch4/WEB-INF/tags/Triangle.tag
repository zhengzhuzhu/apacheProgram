<%@ tag pageEncoding="GB2312" %>
<%@ attribute name="a" required="true" %>
<%@ attribute name="b" required="true" %>
<%@ attribute name="c" required="true" %>
<%@ variable name-given="result" scope="AT_END" %>
  <%   String mess="";
       try {  double sideA=Double.parseDouble(a);
              double sideB=Double.parseDouble(b);
              double sideC=Double.parseDouble(c);
              if(sideA+sideB>sideC&&sideA+sideC>sideB&&sideC+sideB>sideA) {
                  double p=(sideA+sideB+sideC)/2.0;
                  double area=Math.sqrt(p*(p-sideA)*(p-sideB)*(p-sideC));
                  mess=""+area;
              }
              else
                  mess="���ܹ���һ��������,�޷��������";
       }
       catch(Exception e){
              mess="�޷��������"+e;
       }
       jspContext.setAttribute("result",mess);  //��result���ظ�get.jsp 
  %>