package tom.jiafei;
import java.util.*;
import java.text.SimpleDateFormat;
public class MessBoard
{
	String name,title,content;
	StringBuffer allMessage;
	ArrayList<String>savedName,savedTitle,savedContent,savedTime;
	public MessBoard(){
		savedName=new ArrayList<String>();
		savedTitle=new ArrayList<String>();
		savedContent=new ArrayList<String>();
		savedTime=new ArrayList<String>();
	}

	public void setName(String s){
		try{
		byte bb[]=s.getBytes("ISO-8859-1");
		s=new String(bb);
		}
		catch(Exception e){}
		name=s;
		savedName.add(name);
		Date time=new Date();
		SimpleDateFormat matter=new SimpleDateFormat("yyy-MM-dd,HH:mm:ss");
		String messTime=matter.format(time);
		savedTime.add(messTime);
	}

	public void setTitle(String t){
		try{
		byte bb[]=t.getBytes("ISO-8859-1");
		t=new String(bb);
		}
		catch(Exception e){}
		title=t;
		savedTitle.add(title);
	}
	public void setContent(String s){
		try{
		byte bb[]=s.getBytes("ISO-8859-1");
		s=new String(bb);
		}
		catch(Exception e){}
		content=s;
		savedContent.add(content);
	}
	public StringBuffer getAllMessage(){
		allMessage=new StringBuffer();
		allMessage.append("<table border=1>");
		allMessage.append("<tr>");
		allMessage.append("<th>留言者姓名</th>");
		allMessage.append("<th>留言标题</th>");
		allMessage.append("<th>留言内容</th>");
		allMessage.append("<th>留言时间</th>");
		for(int k=0;k<savedName.size();k++){
			allMessage.append("</tr>");
			allMessage.append("<td>");
			allMessage.append(savedName.get(k));
			allMessage.append("</td>");
			allMessage.append("<td>");
			allMessage.append(savedTitle.get(k));
			allMessage.append("</td>");
			allMessage.append("<td>");
			allMessage.append("<textarea>");
			allMessage.append(savedContent.get(k));
			allMessage.append("</textarea>");
			allMessage.append("</td>");
			allMessage.append("<td>");
			allMessage.append(savedTime.get(k));
			allMessage.append("</td>");
			allMessage.append("<tr>");
		}
		allMessage.append("</table>");
		return allMessage;
	}
}  

