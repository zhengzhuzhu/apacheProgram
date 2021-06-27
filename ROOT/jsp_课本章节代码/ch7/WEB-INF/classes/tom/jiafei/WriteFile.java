package tom.jiafei;
import java.io.*;
public class WriteFile{
   String filePath=null,
          fileName=null,
          fileContent=null;
   boolean success;
   public void setFilePath(String s){
      filePath=s;
      try{  File path=new File(filePath);
            path.mkdir();
         }
      catch(Exception e){}   
   }
   public String getFilePath(){
      return filePath;
   }
   public void setFileName(String s){
      fileName=s;
   }
   public String getFileName(){
      return fileName;
   }
   public void setFileContent(String s){
      fileContent=s;
      byte content[]=fileContent.getBytes();
      try{  File file=new File(filePath,fileName);
            FileOutputStream in=new FileOutputStream(file) ;
            in.write(content,0,content.length);
            in.close();
            success=true;
      }
      catch(Exception e){
            success=false;
      }   
   }
   public boolean isSuccess(){
      return success;
   }
}