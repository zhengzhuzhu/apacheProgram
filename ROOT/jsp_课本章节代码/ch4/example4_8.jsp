<HTML><%@ page contentType="text/html;charset=GB2312" %>
<BODY bgcolor=cyan><FONT size=1>
<FORM action="answer.jsp" method=post name=form>
  <table border=1>
    <tr>
       <th> "����"���ĸ�����</th>
       <th> ����ù����籭�ھ������</th>
    </tr>
    <tr>
       <td>
           <INPUT type="radio" name="R" value="����">���� 
           <INPUT type="radio" name="R" value="�¹�">�¹� 
           <INPUT type="radio" name="R" value="����">���� 
           <INPUT type="radio" name="R" value="����" checked="ok">����
       </td>
       <td>
           <INPUT type="checkbox" name="item" value="�������Ҷ�" >�������Ҷ�
           <INPUT type="checkbox" name="item" value="�й����Ҷ�" >�й����Ҷ�
           <INPUT type="checkbox" name="item" value="�������Ҷ�" >�������Ҷ�
           <INPUT type="checkbox" name="item" value="�������Ҷ�" >�������Ҷ�
           <INPUT TYPE="hidden" value="ϲ�����籭!" name="secret">
       </td> 
    </tr>
    <tr>
       <td><INPUT TYPE="submit" value="�ύ" name="submit"></td>
       <td><INPUT TYPE="reset" value="����"></td>
    </tr>
  </table>
</FORM> 
</FONT></BODY></HTML>
