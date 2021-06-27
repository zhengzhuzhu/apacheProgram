package china.dalian;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class HandleGuess extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void  doPost(HttpServletRequest request,HttpServletResponse response)                         throws ServletException,IOException{
      HttpSession session=request.getSession(true);  //获取客户的session对象
      String str=request.getParameter("clientGuess"); //获取客户猜测的数字
      int guessNumber=-1;
      try{ guessNumber=Integer.parseInt(str);
      }
      catch(Exception e){
           response.sendRedirect("inputNumber.jsp");
      }
      int savedNumber=
      ((Integer)session.getAttribute("savedNumber")).intValue();
      if(guessNumber<savedNumber){
           session.setAttribute("message","您猜小了");
           response.sendRedirect("inputNumber.jsp");          
      }
      if(guessNumber>savedNumber){
           session.setAttribute("message","您猜大了");
           response.sendRedirect("inputNumber.jsp");          
      }
      if(guessNumber==savedNumber){
           session.setAttribute("message","您猜对了");
           response.sendRedirect("inputNumber.jsp");          
      }
   } 
   public  void  doGet(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException{
      doPost(request,response);
   }
}