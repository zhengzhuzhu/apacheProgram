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
                    out.print("<BR>"+number+"��ƽ������");
                    out.print("<BR>"+r);
                }
                else
                   out.print("<BR>"+"������һ������");
        }
        catch(NumberFormatException e){
              out.print("<BR>"+"�����������ַ�");
        }
    %>
</FONT></BODY></HTML>
