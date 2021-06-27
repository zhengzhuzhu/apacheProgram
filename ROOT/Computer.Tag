<%@tag pageEncoding="gb2312"%>
<%@attribute name="numberA" required="true"%>
<%@attribute name="numberB" required="true"%>
<%@variable name-given="result" scope="AT_END"%>
<% try
	{
		double a=Double.parsrDouble(numberA);
		double b=Double.parsrDouble(numberB);
		double r=0;
		if(operator.equals("+")){
			r=a+b;
		}
		else if (operator.equals("-")) {
		    r=a-b;
		}
		else if (operator.equals("*")) {
		    r=a*b;
		}
		else if (operator.equals("/")) {
		    r=a/b;
		}
		jspContext.setAttribute("result",String.valueOf(r));
		<!--封装成string返回-->
	}
	catch(Exception e){
		jspContext.setAttribute("result","发生异常："+e);
	}
%>