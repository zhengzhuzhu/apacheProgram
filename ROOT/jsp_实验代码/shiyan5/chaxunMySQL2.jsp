<%@page contentType=";charset=gb2312"%>
<%@page import="java.sql.*"%>
<html><body>
	<% Connection con;
		Statement sql;
		ResultSet rs;

       try{
  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
System.out.println("1加载驱动成功！");
}catch(Exception e){
 out.println(e);
out.print("2加载驱动失败！");}
try{
String url="jdbc:sqlserver://localhost:1433;DatabaseName=astudent";
String password="sa";
String user="sa";
con=DriverManager.getConnection(url,user,password);         
        out.print("3连接数据库成功！");
           
			
		}
		catch(Exception e){
		 e.printStackTrace();
out.println(e);
out.print("4SQL Server连接失败！");
		}
		%>
 	</body>
</html>
