<%@ page contentType="text/html;charset=gb2312"%>
<%@ attribute name="str" required="true" %>
<%@ attribute name-given="wordList" 
	variable-calss="java.util.ArrayList" scope="AT_END"%>
<%
	ArrayList<String>list=new ArrayList<String>();
		String regex="[\\s\\d\\p{Punct}]+";
		String words[]=str.split(regex);
		for(int i=0;i<words.length;i++){
			list.add(words[i]);
		}
		jspContext.setAttribute("wordList",list);
%>
