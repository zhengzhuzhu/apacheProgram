package china.dalian;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class HandleGuess extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void  doPost(HttpServletRequest request,HttpServletResponse response)                         throws ServletException,IOException{
      HttpSession session=request.getSession(true);  //��ȡ�ͻ���session����
      String str=request.getParameter("clientGuess"); //��ȡ�ͻ��²������
      int guessNumber=-1;
      try{ guessNumber=Integer.parseInt(str);
      }
      catch(Exception e){
           response.sendRedirect("inputNumber.jsp");
      }
      int savedNumber=
      ((Integer)session.getAttribute("savedNumber")).intValue();
      if(guessNumber<savedNumber){
           session.setAttribute("message","����С��");
           response.sendRedirect("inputNumber.jsp");          
      }
      if(guessNumber>savedNumber){
           session.setAttribute("message","���´���");
           response.sendRedirect("inputNumber.jsp");          
      }
      if(guessNumber==savedNumber){
           session.setAttribute("message","���¶���");
           response.sendRedirect("inputNumber.jsp");          
      }
   } 
   public  void  doGet(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException{
      doPost(request,response);
   }
}