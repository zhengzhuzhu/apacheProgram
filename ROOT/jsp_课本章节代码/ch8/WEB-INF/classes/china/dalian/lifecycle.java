package china.dalian;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class lifecycle extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
	  System.out.println("--------��ʼ��--------");
   }
   public void service(HttpServletRequest reqest,HttpServletResponse response)
                       throws IOException{
      response.setContentType("text/html;charset=GB2312");//������Ӧ��MIME����
      PrintWriter out=response.getWriter();//���һ����ͻ��������ݵ������
      out.println("<html><body>");
      out.println("<h2>���ã���ӭѧϰservlet��</h2>");
      out.println("</body></html>");
      System.out.println("--------service����--------");
   } 
   public void destroy() {
      System.out.println("--------destroy����--------");
	  try{
		  Thread.sleep(5000);
	  }catch(Exception e){}
   }
}
