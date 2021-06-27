package user.yourservlet;
import user.yourbean.*;
import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
public class HandleAverage extends HttpServlet{
	public void init(ServletConfig config)throws ServletException{
		super.init(config);
		}
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
      throws ServletException,IOException{
		SaveNumber bean=new SaveNumber();
		request.setAttribute("average",bean);
		
		double  a=Double.parseDouble(request.getParameter("firstNumber"));
		
		double b=Double.parseDouble(request.getParameter("secondNumber"));

		bean.setFirstNumber(a);
		bean.setSecondNumber(b);
		bean.setType("代数平均值");
		//计算
		double average=(a+b)/2;
		bean.setResult(average);
		RequestDispatcher dispatcher=request.getRequestDispatcher("showResult.jsp");
		dispatcher.forward(request,response);
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
	throws ServletException,IOException{
		SaveNumber bean=new SaveNumber();
		request.setAttribute("average",bean);
		
		double  a=Double.parseDouble(request.getParameter("firstNumber"));
		
		double b=Double.parseDouble(request.getParameter("secondNumber"));

		bean.setFirstNumber(a);
		bean.setSecondNumber(b);
		bean.setType("几何平均值");
		//计算
		double average=Math.sqrt(a*b);
		bean.setResult(average);
		RequestDispatcher dispatcher=request.getRequestDispatcher("showResult.jsp");
		dispatcher.forward(request,response);

		}}