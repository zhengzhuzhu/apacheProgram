package tom.jiafei;
import java.io.*;
public class Test{
   String filename="",      //存放考题文件名字的字符串
   correctAnswer="?????",   //存放正确答案的字符串
   //存放试题和用户提交的答案的字符串
   testContent="",
   selection="";
   int score=0;         //考试者的得分
   boolean 批分结束=false;
   File f=null;
   FileReader in=null;
   BufferedReader buffer=null;
   public void setFilename(String name){
      filename=name; 
     //当选择了新的考题文件后，将用户的答案字符串清空
     //将分数设为0
      score=0;
      selection="";
      批分结束=false;
      //读取试题文件的第一行：标准答案
      try{ f=new File(filename);
           in=new FileReader(f);
           buffer=new BufferedReader(in); 
           correctAnswer=(buffer.readLine()).trim();//读取一行,去掉前后空格
      }
      catch(Exception e){
           testContent="没有选择"+f.getAbsolutePath()+"试题";
           buffer=null;
      }
  }
  public String getFilename(){
      return filename;
  }
  public String getTestContent(){  //获取试题的内容
     try { String s=null;
           StringBuffer temp=new StringBuffer();
           if(buffer!=null) { //如果用户选择了试题文件，buffer就不是空对象
              while((s=buffer.readLine())!=null){  //继续取某个试题
                if(s.startsWith("**")) //试题结束标志
                   break;
                temp.append(s);
                if(s.startsWith("endend")){ //试题文件结束标志
                   in.close();             //关闭和文件的连接
                   buffer.close(); 
                }
                 testContent=new String(temp);  
               }
            }
            else{
               testContent=new String("没有选择"+f.getAbsolutePath()+"试题");
            }
     }
     catch(Exception e){
           testContent="试题无内容,考试结束了！！";
           try{  in.close();
                 buffer.close();
           }
           catch(IOException exp){}
     }
     return testContent;
  }
  public void setSelection(String s){
     selection=selection+s; //将用户提交的答案依次尾加到selection
  }
  public int getScore(){
     int length1=selection.length();
     int length2=correctAnswer.length();
     int i=length1-1;               //用户提交的第i题答案在selection中的位置
     if((i!=-1)&&(i<=length2-1)){   //判定分数
       if((selection.charAt(i)==correctAnswer.charAt(i))&&(批分结束==false))
          score++;
       if(i==length2-1)
         批分结束=true;
     }
    return score;
  }
}