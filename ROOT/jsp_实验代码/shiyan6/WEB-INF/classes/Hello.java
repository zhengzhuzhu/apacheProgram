package china.dalian;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Hello extends HttpServlet{
	public void init(ServletConfig config)
	throws ServletException{
	super.init(config);
	}
	public void service(HttpServletRequest request,HttpServletResponse response)
	throws IOException{
	response.setContentType("text/html");
	PrintWriter out =response.getWriter();
	out.println("<html><body>");
	out.println("hello,servlet!!");
	out.println("</body></html>");
	}
	}