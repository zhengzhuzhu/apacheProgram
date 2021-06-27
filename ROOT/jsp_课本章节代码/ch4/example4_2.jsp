<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT size=3>
   <FORM  action="" method=post name=form>
         <INPUT type="text" name="girl"> 
         <INPUT TYPE="submit" value="Enter" name="submit">
   </FORM>  
   <%   String textContent=request.getParameter("girl");
           double number=0,r=0;
        if(textContent==null)
             textContent="";
        try{   number=Double.parseDouble(textContent);
                if(number>=0){
                     r=Math.sqrt(number) ;
                    out.print("<BR>"+number+"的平方根：");
                    out.print("<BR>"+r);
                }
                else
                   out.print("<BR>"+"请输入一个正数");
        }
        catch(NumberFormatException e){
              out.print("<BR>"+"请输入数字字符");
        }
    %>
</FONT></BODY></HTML>
