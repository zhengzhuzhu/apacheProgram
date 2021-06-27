package tom.jiafei;
import java.io.*;
import javax.servlet.http.*;
public class UpFile{
    HttpServletRequest request;
    HttpSession session;
    String upFileMessage="",showImage;
    public void setRequest(HttpServletRequest request){
       this.request=request;
    }
    public void setSession(HttpSession session){
       this.session=session;
    }
    public String getShowImage(){
      return showImage;
    }
    public String getUpFileMessage(){
       String fileName=null;
       try{ String tempFileName=(String)session.getId();//用户的session的id
            File dir=new File("D:/tomcat8/webapps/ch7/image");
            dir.mkdir();
            File f1=new File(dir,tempFileName);
            FileOutputStream o=new FileOutputStream(f1);
            InputStream in=request.getInputStream();
            byte b[]=new byte[10000];
            int n;
            while( (n=in.read(b))!=-1){  //将用户上传的全部信息存入f1
              o.write(b,0,n);  
            }
            o.close();
            in.close();
            RandomAccessFile random=new RandomAccessFile(f1,"r");
            int second=1;   //读出f1的第2行，析取出上传文件的名字：
            String secondLine=null;
            while(second<=2){  
                secondLine=random.readLine();
                second++;
            }
            //获取第2行中目录符号'\'最后出现的位置
             int position=secondLine.lastIndexOf("=");
            //用户上传的文件的名字是：
            fileName=secondLine.substring(position+2,secondLine.length()-1);
            byte  cc[]=fileName.getBytes("ISO-8859-1");
            fileName=new String(cc);
            random.seek(0); //再定位到文件f1的开头。
            //获取第4行回车符号的位置: 
            long  forthEndPosition=0;
            int forth=1;
            while((n=random.readByte())!=-1&&(forth<=4)){  
               if(n=='\n'){
                  forthEndPosition=random.getFilePointer();
                  forth++;
               }
            }
            //根据用户上传文件的名字，将该文件存入磁盘：
            File f2=new File(dir,fileName); 
            RandomAccessFile random2=new RandomAccessFile(f2,"rw"); 
             //确定出文件f1中包含用户上传的文件的内容的最后位置，即倒数第6行。
            random.seek(random.length());
            long endPosition=random.getFilePointer();
            long mark=endPosition;
            int j=1;
            while((mark>=0)&&(j<=6)){  
                 mark--;
                 random.seek(mark);
                 n=random.readByte();
                 if(n=='\n'){
                    endPosition=random.getFilePointer();
                    j++;
                 }
             }
          //将random流指向文件f1的第4行结束的位置：
          random.seek(forthEndPosition);
          long startPoint=random.getFilePointer();
         //从f1读出用户上传的文件存入f2（读取第4行结束位置至倒数第6行之间的内容）
          while(startPoint<endPosition-1){
              n=random.readByte();
              random2.write(n); 
              startPoint=random.getFilePointer();
          }
          random2.close();
          random.close();
          f1.delete(); //删除临时文件
          upFileMessage=fileName+" 上传成功(Successfully UpLoad)";
          showImage=fileName;
          return upFileMessage;
       }
       catch(Exception exp){
          if(fileName!=null){
              upFileMessage=fileName+"上传失败( Fail to UpLoad)";
              return upFileMessage;
          }
          else{
              upFileMessage="";
              return upFileMessage;
          }
       }
    }
}
