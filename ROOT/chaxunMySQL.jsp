<%@page contentType=";charset=uft-8"%>
<%@page import="java.sql.*"%>
<html>
	<% Connection con;
		Statement sql;
		ResultSet rs;
		tyr{Class.forName("com.mysql.jdbc.Driver");
		}
		catch(Exception e){}
		try{
			String uri="jdbc:mysql://127.0.0.1/student";
			String user="root";
			String password="root";
			con=DriverManger.getConnection(uri,user,password);
			sql=con.createStatement();
			rs=sql.executeQuery("select * from mess");
			out.print("<table border=2>");
			out.print("<tr>");
			out.print("<th width=100>"+"学号");
			out.print("<th width=100>"+"姓名");
			out.print("<th width=50>"+"生日");
			out.print("<th width=50>"+"成绩");
			out.print("</TR>");
			while(rs.next()){
				out.print("<tr>");
				out.print("<td>"+rs.getString(1)+"</td>");
				out.print("<td>"+rs.getString(2)+"</td>");
				out.print("<td>"+rs.getString(3)+"</td>");
				out.print("<td>"+rs.getString(4)+"</td>");
				out.print("</tr>");
			}
			out.print("</table>");
			con.close;
		}
		catch(Exception e){
			out.print(e);
		}
		%>
 	</body>
</html>