<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    	<%String s1=request.getParameter("image");
    	  String s2=request.getParameter("video");
    	 %>
    	 <image src="picture/<%=s1%>" width=200 height=600>图像</image>
    	 <embed src="avi/<%=s2%>" width=300 height=180>视频</embed>
 	</body>
</html>