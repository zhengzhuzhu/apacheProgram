<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.image.*" %>
<%@ page import="java.awt.geom.*" %>
<%@ page import="com.sun.image.codec.jpeg.*" %>
<HTML><BODY>  <BR> �ۿ���ת����Բ
  <FORM action="" method="post" name=form>
     <INPUT TYPE="submit" value="�ۿ�" name="submit">
  </FORM>
<% String str=request.getParameter("submit");
   if(str!=null){
     response.setContentType("image/jpeg");            //�ı�MIME����
     int width=260, height=260;
     BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
     Graphics g = image.getGraphics();
     g.setColor(Color.white);
     g.fillRect(0, 0, width, height);
     Graphics2D g_2d=(Graphics2D)g; 
     Ellipse2D ellipse=new Ellipse2D. Double (20,50,120,50);
     g_2d.setColor(Color.blue);
     AffineTransform trans=new  AffineTransform(); 
     for(int i=1;i<=24;i++){
       trans.rotate(15.0*Math.PI/180,75,75);
       g_2d.setTransform(trans);
       g_2d.draw(ellipse);
     }
     g.dispose();
     OutputStream outClient= response.getOutputStream();//��ȡָ���û��˵������
     JPEGImageEncoder encoder=JPEGCodec.createJPEGEncoder(outClient);
     encoder.encode(image);
   }
%> 
</BODY></HTML>
