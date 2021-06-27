package tom.jiafei;
import java.io.*;
class FileName implements FilenameFilter{ 
    String str=null;
    FileName (String s){
       str="."+s;
    }
    public  boolean accept(File dir,String name){
       return name.endsWith(str);
    }              
}
public class ListFile{
    String extendsName=null,allFileName=null;
    public void setExtendsName(String s){
      extendsName=s;
    }
    public String getExtendsName(){
      return extendsName;
    }
    public String getAllFileName(){
      StringBuffer str=new StringBuffer(); 
      File dir=new File("D:/tomcat8/webapps/ch7");
      FileName help=new FileName(extendsName);
      String file_name[]=dir.list(help);
      for(int i=0;i<file_name.length;i++){
         str.append(file_name[i]+" ");
      }
      allFileName=new String(str);
      return allFileName;
   }  
}
