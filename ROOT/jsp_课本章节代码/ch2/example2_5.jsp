<%@ page contentType="text/html;charset=GB2312" %>
<HTML><BODY bgcolor=cyan><FONT size=3>
 <P> ������E-mail��<BR>
  <FORM action="" method=get name=form>
        <INPUT type="text"  name="client"  value="������Email"> 
        <INPUT TYPE="submit" value="�ͳ�" name=submit>
  </FORM> 
  <%    String str=request.getParameter("client");
            if(str!=null){
                 int index=str.indexOf("@");
                 if(index==-1){
  %>              <BR>����E-mail��ַ��û��@��
  <%         }
                 else{ 
                      int space=str.indexOf(" ");
                      if(space!=-1){
  %>                   <BR>����E-mail��ַ���зǷ��Ŀո�
  <%              }  
                      else{
                          int start=str.indexOf("@");
                          int end=str.lastIndexOf("@");
                          if(start!=end){
  %>                      <BR>����E-mail��ַ���������ϵķ��ţ�@��
  <%                  }
                          else{
                               out.print("<BR>"+str);
  %>                       <BR>����E-mail��ַ��д��ȷ��
  <%                  }
                     }
                 }
            }
  %>
</FONT></BODY></HTML>
