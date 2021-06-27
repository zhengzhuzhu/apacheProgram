package tom.jiafei;
import java.io.*;
class FileName implements FilenameFilter{
   public  boolean accept(File dir,String name){
      boolean boo=false;
        if(name.endsWith(".jpg")||name.endsWith(".JPG"))
           boo=true;
        return boo;
   }              
}
public class Play{
   int imageNumber=0,max;
   String pictureName[],playImage;
   public Play(){
      File f =new File("."); //该文件被认为是在Web引擎的/bin目录中。
      String path= f.getAbsolutePath();
      path=path.substring(0,path.indexOf("bin")-1);
      File dir=new File(path+"/webapps/ch7/image");
      pictureName=dir.list(new FileName());
      max=pictureName.length;
   }
   public void setImageNumber(int n){
     if(n<0)
        n=max-1;
     if(n==max)
        n=0; 
     imageNumber=n;
   }
   public int getImageNumber(){
     return imageNumber;
   }
   public String getPlayImage(){
     playImage=new String("<image src=image/"+pictureName[imageNumber]+" "+
             " width=260 height=200></image>");
     return playImage; 
   } 
}