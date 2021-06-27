<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT size=3>
 <P> 请输入E-mail：<BR>
  <FORM action="" method=get name=form>
        <INPUT type="text"  name="client"  value="请输入Email"> 
        <INPUT TYPE="submit" value="送出" name=submit>
  </FORM> 
  <%    String str=request.getParameter("client");
            if(str!=null){
                 int index=str.indexOf("@");
                 if(index==-1){
  %>              <BR>您的E-mail地址中没有@。
  <%         }
                 else{ 
                      int space=str.indexOf(" ");
                      if(space!=-1){
  %>                   <BR>您的E-mail地址含有非法的空格。
  <%              }  
                      else{
                          int start=str.indexOf("@");
                          int end=str.lastIndexOf("@");
                          if(start!=end){
  %>                      <BR>您的E-mail地址有两个以上的符号：@。
  <%                  }
                          else{
                               out.print("<BR>"+str);
  %>                       <BR>您的E-mail地址书写正确。
  <%                  }
                     }
                 }
            }
  %>
</FONT></BODY></HTML>
