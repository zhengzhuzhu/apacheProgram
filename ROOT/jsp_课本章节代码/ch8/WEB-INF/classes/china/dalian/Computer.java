package china.dalian;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Computer extends HttpServlet{
   String servletName;
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
      servletName=getServletName();
   }
   public void service(HttpServletRequest request,HttpServletResponse response)
                       throws IOException{
      response.setContentType("text/html;charset=GB2312");
      PrintWriter out=response.getWriter();
      out.println("<html><body>");
      String str=request.getParameter("number");
      out.print("����һ��servlet����������:"+servletName+"��<br>");
      out.print("�Ҹ�����㲢��ʾ"+str+"������:<br>"); 
      int n=0;
      try{  n=Integer.parseInt(str);
            for(int i=1;i<=n;i++){
               if(n%i==0)
                 out.println(" "+i);
            }
      }
      catch(NumberFormatException e){
            out.print(" "+e);
      }       
      out.println("</body></html>");
   } 
}