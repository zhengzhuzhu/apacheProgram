<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="java.sql.*"%>
<html>
<body bgcolor=yellow>
<%
Connection con;
Statement sql;
ResultSet rs;
try{
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
System.out.println("1���������ɹ���");
}catch(Exception e){
 out.println(e);
out.print("2��������ʧ�ܣ�");}
try{
String url="jdbc:sqlserver://localhost:1433;DatabaseName=astudent";
String user="sa";
String password="sa";
con=DriverManager.getConnection(url,user,password);
out.print("3�������ݿ�ɹ���");
sql=con.createStatement();
rs=sql.executeQuery("SELECT * FROM mess");
out.println("<table border=2>");
out.println("<tr>");
out.println("<th width=100>"+"ѧ��");
out.println("<th width=100>"+"����");
out.println("<th width=50>"+"����");
out.println("<th width=50>"+"�ɼ�");
out.println("</tr>");
while(rs.next()){
	out.println("<tr>");
	out.println("<td>"+rs.getString(1)+"</td>");
	out.println("<td>"+rs.getString(2)+"</td>");
	out.println("<td>"+rs.getString(3)+"</td>");
	out.println("<td>"+rs.getString(4)+"</td>");
	out.println("</tr>");
}
out.println("</table>");
con.close();
}catch(SQLException e){
out.println(e);
out.print("4SQL Server����ʧ�ܣ�");
}
%>
</body>
</html>