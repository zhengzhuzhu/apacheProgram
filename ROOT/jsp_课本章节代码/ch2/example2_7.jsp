<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY>
 <P> 请输入三角形的三个边a,b,c的长度:
<!-- 以下是HTML表单，向服务器发送三角形的三个边的长度 -->
<!-- 要特别注意action=""，的引号中不要有空格 -->
  <FORM action="" method=post name=form>
       <P>请输入三角形边a的长度:<INPUT type="text" name="a">
       <P>请输入三角形边b的长度:<INPUT type="text" name="b">
       <P>请输入三角形边c的长度:<INPUT type="text" name="c">
       <INPUT TYPE="submit" value="送出" name=submit>
  </FORM>  
 <%--获取客户提交的数据--%>
  <%   String string_a=request.getParameter("a"),
           string_b=request.getParameter("b"),
           string_c=request.getParameter("c");
           double a=0,b=0,c=0;
  %>
  <%--判断字符串是否是空对象,如果是空对象就初始化--%>
      <%  if(string_a==null){
                  string_a="0";
                  string_b="0";
                  string_c="0";
             } 
      %>
   <%--求出边长，并计算面积--%>
       <%   try{   a=Double.valueOf(string_a).doubleValue();
                         b=Double.valueOf(string_b).doubleValue(); 
                         c=Double.valueOf(string_c).doubleValue();
                         if(a+b>c&&a+c>b&&b+c>a){
                             double p=(a+b+c)/2.0;
                             double mianji=Math.sqrt(p*(p-a)*(p-b)*(p-c));
                             out.print("<BR>"+"三角形面积："+mianji); 
                        }    
                       else
                            out.print("<BR>"+"您输入的三边不能构成一个三角形");
               }
               catch(NumberFormatException e){
                     out.print("<BR>"+"请输入数字字符");
              }
     %> 
</BODY></HTML>
