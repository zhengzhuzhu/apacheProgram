<HTML><%@ page contentType="text/html;charset=GB2312" %>
<BODY bgcolor=cyan><FONT size=1>
<FORM action="answer.jsp" method=post name=form>
  <table border=1>
    <tr>
       <th> "贝利"是哪个国人</th>
       <th> 曾获得过世界杯冠军的球队</th>
    </tr>
    <tr>
       <td>
           <INPUT type="radio" name="R" value="巴西">巴西 
           <INPUT type="radio" name="R" value="德国">德国 
           <INPUT type="radio" name="R" value="美国">美国 
           <INPUT type="radio" name="R" value="法国" checked="ok">法国
       </td>
       <td>
           <INPUT type="checkbox" name="item" value="法国国家队" >法国国家队
           <INPUT type="checkbox" name="item" value="中国国家队" >中国国家队
           <INPUT type="checkbox" name="item" value="巴西国家队" >巴西国家队
           <INPUT type="checkbox" name="item" value="美国国家队" >美国国家队
           <INPUT TYPE="hidden" value="喜欢世界杯!" name="secret">
       </td> 
    </tr>
    <tr>
       <td><INPUT TYPE="submit" value="提交" name="submit"></td>
       <td><INPUT TYPE="reset" value="重置"></td>
    </tr>
  </table>
</FORM> 
</FONT></BODY></HTML>
