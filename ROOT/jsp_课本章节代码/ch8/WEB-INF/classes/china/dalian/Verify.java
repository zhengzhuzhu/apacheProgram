package china.dalian;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Verify extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void doPost(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException{
      String number=request.getParameter("number");     
      try{   double n=Double.parseDouble(number);
             if(n>2000||n<-2000)
                response.sendRedirect("example8_5.jsp");  //重定向
             else{
                RequestDispatcher dispatcher= 
                request.getRequestDispatcher("forYouShowMessage");
                dispatcher.forward(request, response);      //转发到另一个servlet
             }
           }
      catch(NumberFormatException e){
           response.sendRedirect("example8_5.jsp");  //重定向
      }
   } 
   public  void  doGet(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException{
        doPost(request,response);
   }
}