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
						//�ı�mime����
						response.setContentType("text/plain;charset=gb2312");
						out.println(number+"��ΪԲ�İ뾶������");
					}
					else if (number>0&&number<=100) {
					    response.setContentType("image/jpeg");
					    //�ı�mime����
					    int width=1000,height=1000;
					    BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
					    Graphics g=image.getGraphics();
					    g.setColor(Color.orange);
					    g.fillRect(0,0,width,height);
					    Graphics2D g_2d=(Graphics2D)g;
					    Ellipse2D circle=new Ellipse2D.Double(0,0,number,number);
					    g_2d.setColor(Color.black);
					    g_2d.fill(circle);//����һ��Բ
					    g.dispose();
					    //��ȡָ���û��������
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
