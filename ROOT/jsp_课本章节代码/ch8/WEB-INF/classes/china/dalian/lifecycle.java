package china.dalian;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class lifecycle extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
	  System.out.println("--------初始化--------");
   }
   public void service(HttpServletRequest reqest,HttpServletResponse response)
                       throws IOException{
      response.setContentType("text/html;charset=GB2312");//设置响应的MIME类型
      PrintWriter out=response.getWriter();//获得一个向客户发送数据的输出流
      out.println("<html><body>");
      out.println("<h2>您好，欢迎学习servlet。</h2>");
      out.println("</body></html>");
      System.out.println("--------service方法--------");
   } 
   public void destroy() {
      System.out.println("--------destroy方法--------");
	  try{
		  Thread.sleep(5000);
	  }catch(Exception e){}
   }
}
