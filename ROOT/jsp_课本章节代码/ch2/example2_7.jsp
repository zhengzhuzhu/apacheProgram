<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY>
 <P> �����������ε�������a,b,c�ĳ���:
<!-- ������HTML��������������������ε������ߵĳ��� -->
<!-- Ҫ�ر�ע��action=""���������в�Ҫ�пո� -->
  <FORM action="" method=post name=form>
       <P>�����������α�a�ĳ���:<INPUT type="text" name="a">
       <P>�����������α�b�ĳ���:<INPUT type="text" name="b">
       <P>�����������α�c�ĳ���:<INPUT type="text" name="c">
       <INPUT TYPE="submit" value="�ͳ�" name=submit>
  </FORM>  
 <%--��ȡ�ͻ��ύ������--%>
  <%   String string_a=request.getParameter("a"),
           string_b=request.getParameter("b"),
           string_c=request.getParameter("c");
           double a=0,b=0,c=0;
  %>
  <%--�ж��ַ����Ƿ��ǿն���,����ǿն���ͳ�ʼ��--%>
      <%  if(string_a==null){
                  string_a="0";
                  string_b="0";
                  string_c="0";
             } 
      %>
   <%--����߳������������--%>
       <%   try{   a=Double.valueOf(string_a).doubleValue();
                         b=Double.valueOf(string_b).doubleValue(); 
                         c=Double.valueOf(string_c).doubleValue();
                         if(a+b>c&&a+c>b&&b+c>a){
                             double p=(a+b+c)/2.0;
                             double mianji=Math.sqrt(p*(p-a)*(p-b)*(p-c));
                             out.print("<BR>"+"�����������"+mianji); 
                        }    
                       else
                            out.print("<BR>"+"����������߲��ܹ���һ��������");
               }
               catch(NumberFormatException e){
                     out.print("<BR>"+"�����������ַ�");
              }
     %> 
</BODY></HTML>
