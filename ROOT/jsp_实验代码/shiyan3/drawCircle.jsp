<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.awt.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.image.*" %>
<%@ page import="java.awt.geom.*" %>
<%@ page import="com.sun.image.codec.jpeg.*" %>
<html>
	<body bgcolor="yellowgreen">
		<font size="4">
			<% String r=request.getParameter("radius");
				try{
					double number=Double.parseDouble(r);
					if(number<=0||number>100){
						//改变mime类型
						response.setContentType("text/plain;charset=gb2312");
						out.println(number+"作为圆的半径不合理");
					}
					else if (number>0&&number<=100) {
					    response.setContentType("image/jpeg");
					    //改变mime类型
					    int width=1000,height=1000;
					    BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
					    Graphics g=image.getGraphics();
					    g.setColor(Color.orange);
					    g.fillRect(0,0,width,height);
					    Graphics2D g_2d=(Graphics2D)g;
					    Ellipse2D circle=new Ellipse2D.Double(0,0,number,number);
					    g_2d.setColor(Color.black);
					    g_2d.fill(circle);//绘制一个圆
					    g.dispose();
					    //获取指向用户的输出流
					    OutputStream outClient=response.getOutputStream();
					    JPEGImageEncoder encode=JPEGCodec.createJPEGEncoder(outClient);
					    encode.encode(image);
					}
				}
				catch(Exception e){
					response.sendRedirect("inputRadius.jsp");
				}
			%>
		</font>
	</body>
</html>
