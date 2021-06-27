package user.yourservlet;
import user.yourbean.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class HandleAverage extends HttpServlet{
public void init(ServletConfig config)throws ServletException{
super.init(config);
}
public void doPost(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException{
SaveNumber bean=new SaveNumber();
request.setAttribute("aver",bean);
double a=Double.parseDouble(request.getParameter("firstNumber"));
double b=Double.parseDouble(request.getParameter("secondNumber"));
bean.setFirstNumber(a);
bean.setSecondNumber(b);
bean.setType("代数平均值");
double aver=(a+b)/2;
bean.setResult(aver);
RequestDispatcher dispatcher=request.getRequestDispatcher("showResult,jsp");
dispatcher.forward(request,response);
}
public void doGet(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException{
	SaveNumber bean=new SaveNumber();
request.setAttribute("aver",bean);
double a=Double.parseDouble(request.getParameter("firstNumber"));
double b=Double.parseDouble(request.getParameter("secondNumber"));
bean.setFirstNumber(a);
bean.setSecondNumber(b);
bean.setType("几何平均值");
double aver=Math.sqrt(a*b);
bean.setResult(aver);
RequestDispatcher dispatcher=request.getRequestDispatcher("showResult,jsp");
dispatcher.forward(request,response);
}
}
