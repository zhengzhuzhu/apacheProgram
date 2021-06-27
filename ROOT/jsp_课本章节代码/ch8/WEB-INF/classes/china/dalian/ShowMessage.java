package china.dalian;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ShowMessage extends HttpServlet{
    public void init(ServletConfig config) throws ServletException{
       super.init(config);
    }
   public  void  doPost(HttpServletRequest request,HttpServletResponse response)                         throws ServletException,IOException{
      response.setContentType("text/html;charset=GB2312");
      PrintWriter out=response.getWriter();
      String number=request.getParameter("number"); //获取客户提交的信息
      double n=Double.parseDouble(number);
      out.println(number+"的平方:"+(n*n));
   } 
   public  void  doGet(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException{
      doPost(request,response);
   }
}