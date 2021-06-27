<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <br>观看旋转的椭圆
    <form action="" method="post" name="submit">
    </form>
    <%
    	String str=request.getParameter("submit");
    	if(str!=null){
    		response.setContentType("image/jpeg");
    		int width=260,height=260;
    		BufferedImage image=new BufferedImage(width,height,BufferedImage.Type_INT_RGB);
    		Graphics g=image.getGraphics();
    		g.setColor(Color.while);
    		g.fillRect(0,0,width,height);
    		Graphics2D g_2d=(Graphics2D)g;
    		Ellipse2D ellipse=new Ellipse2D.double(20,50,120,50);
    		g_2d.setColor(Color.blue);
    		AffineTransform trans=new AffineTransform();
    		for(int i=1;i<=24;i++){
    			trans.rotate(15.0*Math.PI/180,75,75);
    			g_2d.setTransform(trans);
    			g_2d.draw(ellipse);
    		}
    		g.dispose();
    		OutputStream outClient=response.getOutStream();
    		JPEGImageEncoder encode=JPEGImageEncoder(outClient);
    		encoder.encode(image);
    	}
    %>
    </body>
</html>