<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="tom.jiafei.ShowRecordByPage" %>
<jsp:useBean id="look" class="tom.jiafei.ShowRecordByPage" scope="session"/>
<jsp:setProperty name="look" property="databaseName" value="warehouse"/>
<jsp:setProperty name="look" property="tableName" value="product"/>
<jsp:setProperty name="look" property="user" value="root"/>
<jsp:setProperty name="look" property="password" value=""/>
 <jsp:setProperty name="look" property="pageSize" value="3"/>
<HTML><BODY bgcolor=cyan>
     ���ݿ�
     <jsp:getProperty  name= "look" property="databaseName"/>��
     <jsp:getProperty  name= "look" property="tableName"/>��ļ�¼������ҳ��ʾ��
<br>���� <jsp:getProperty name="look" property="pageAllCount"/> ҳ��
    ÿҳ�����ʾ<jsp:getProperty  name="look"  property="pageSize" />����¼��
   <jsp:setProperty  name= "look"  property="showPage"  />
  <jsp:getProperty  name= "look"  property="presentPageResult" />
  <BR>������ǰһҳ���򡰺�һҳ����Ŧ�鿴��¼����ǰ��ʾ��
  <jsp:getProperty  name= "look"  property="showPage" /> ҳ����
 <Table>
  <tr><td><FORM action="">
        <Input type=hidden name="showPage" value="<%=look.getShowPage()-1 %>" >
        <Input type=submit name="g" value="ǰһҳ">
        </FORM>
      </td>
      <td><FORM action="">
        <Input type=hidden name="showPage" value="<%=look.getShowPage()+1 %>" >
        <Input type=submit name="g" value="��һҳ">
        </Form>
      </td>
      <td> <FORM action="">
           ����ҳ�룺<Input type=text name="showPage" size=5 >
           <Input type=submit name="g" value="�ύ">
           </FORM>
      </td>
  </tr>
  </Table>
</BODY></HTML>