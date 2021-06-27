package china.dalian;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Show extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void  doPost(HttpServletRequest request,HttpServletResponse response)                         throws ServletException,IOException{
      response.setContentType("text/html;charset=GB2312");
      PrintWriter out=response.getWriter();
      out.println("<html><body>");
      String s=request.getParameter("str");
      byte bb[]=s.getBytes("iso-8859-1");
      s=new String(bb); 
      int n=s.length();
      out.print("\""+s+"\""+"的长度:"+n+"<br>");
      out.println("</body></html>");
   } 
   public  void  doGet(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException{
      doPost(request,response);
      response.setContentType("text/html;charset=GB2312");
      PrintWriter out=response.getWriter();
      out.println("<html><body>");
      String s=request.getParameter("str");
      byte bb[]=s.getBytes("iso-8859-1");
      s=new String(bb); 
      if(s.startsWith("Hello"))
          out.print("\""+s+"\""+"的前缀是:Hello"); 
      else
         out.print("\""+s+"\""+"的前缀不是:Hello"); 
      out.println("</body></html>"); 
   }
}