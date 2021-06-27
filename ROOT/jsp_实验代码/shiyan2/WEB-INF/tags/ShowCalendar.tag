<%@ tag pageEncoding="gb2312"%>
<%@ tag import="java.util.*" %>
<%@ attribute name="year" required="true"%>
<%@ attribute name="month" required="true"%>
<%
	int y=2015,m=1;
	String day[]=new String[42];
	try{
		y=Integer.parseInt(year);
		m=Integer.parseInt(month);
		Calendar rili=Calendar.getInstance();
		rili.set(y,m-1,1);
		int ���ڼ�=rili.get(Calendar.DAY_OF_WEEK)-1;
		int dayMonth=0;
		if(m==1||m==3||m==5||m==7||m==8||m==10||m==12){
			dayMonth=31;
		}
		if(m==4||m==6||m==9||m==11){
			dayMonth=30;
		}
		if(m==2){
			if(((y%4==0)&&(y%100==0))||(y%400==0)){
				dayMonth=29;
			}
			else{ dayMonth=28;}
		}
		for(int i=0;i<���ڼ�;i++){
			day[i]="--";
		}
		for(int i=���ڼ�,n=1;i<���ڼ�+dayMonth;i++){
			day[i]=String.valueOf(n);
			n++;
		}
			for(int i=���ڼ�+dayMonth;i<42;i++){
			day[i]="--";
		}
	}
	catch(Exception e){
		out.println("��ݻ����·ݲ�����");
	}
%>
<h1><%=year%>��<%=month%>�µ�������</h1>
<table border="1">
	<tr><th>������</th><th>����һ</th><th>���ڶ�</th><th>������</th><th>������
	</th><th>������</th><th>������</th></tr>
	<%
		for(int n=0;n<day.length;n=n+7){
	%><tr>
	<% 
		for(int i=n;i<7+n;i++){
	%>
		<td><%=day[i]%></td>		
	<%
		}
	%>
	</tr>
	<%
		}
	%>
</table>
