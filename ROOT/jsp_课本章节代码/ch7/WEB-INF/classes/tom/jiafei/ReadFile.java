package tom.jiafei;
import java.io.*;
public class ReadFile{
   String fileDir="c:/",fileName="";
   String listFile,readContent;  
   public void setFileDir(String s){
      fileDir=s;
   }
   public String getFileDir(){
      return fileDir;
   }
   public void setFileName(String s){ 
      fileName=s;
   }
   public String getFileName(){
      return fileName;
   }
   public String getListFile(){       
      File dir=new File(fileDir);
      File file_name[]=dir.listFiles();
      StringBuffer list=new  StringBuffer();
      for(int i=0;i<file_name.length;i++){
          if ((file_name[i]!=null)&&(file_name[i].isFile())){
            String temp=file_name[i].toString();
            int n=temp.lastIndexOf("\\");
            temp=temp.substring(n+1);
            list.append(" "+temp); 
          }
      }
      listFile=new String(list);
      return listFile;
  }  
  public String getReadContent(){   //¶ÁÈ¡ÎÄ¼þ
     try{  File file=new File(fileDir,fileName);
           FileReader in=new FileReader(file) ;
           BufferedReader inTwo=new BufferedReader(in);
           StringBuffer stringbuffer=new StringBuffer(); 
           String s=null;
           while ((s=inTwo.readLine())!=null){ 
               byte bb[]=s.getBytes();
               s=new String(bb);
               stringbuffer.append("\n"+s);
           }
           String temp=new String(stringbuffer);
           readContent="<TextArea rows=10 cols=62>"+temp+"</TextArea>";
     }
     catch(IOException e){
           readContent="<TextArea rows=8 cols=62></TextArea>"; 
         
     } 
     return readContent;
   }
}
