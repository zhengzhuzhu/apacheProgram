
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#009900"><font size="2"></font>
    	<% int score=0;
    		request.setCharacterEncoding("GB2312");
    		String countryName=request.getParameter("R");
    		Sring itemNames[]=request.getParameterValues("item");
    		String secreMess=request.getParameter("secret");
    		if(countryName.equals("巴西"))
    		score++;
    		if(itemNames==null)
    		out.println("没有选择球队<br>");
    			else if (itemNames.length>=2) {
    				if(itemNames[0].equals("法国国家队")&&itemNames[1].equals("巴西国家队"))
    				score++;
    			    
    			}
    			out.println("你的得分是："+score);
    			out.println("<br>你提交的答案一是："+countryName);
    			out.println("<br>你提交的答案二是：");
    				if(itemNames!=null)
    				for(int k=0;k<itemNames.length;k++)
    					out.println(" "+itemNames[k]);
    				out.println("<br>你提交的隐藏信息时："+secreMess);
    		%>
 	</body>
</html>