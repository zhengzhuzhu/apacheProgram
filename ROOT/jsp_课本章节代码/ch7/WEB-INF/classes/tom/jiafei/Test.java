package tom.jiafei;
import java.io.*;
public class Test{
   String filename="",      //��ſ����ļ����ֵ��ַ���
   correctAnswer="?????",   //�����ȷ�𰸵��ַ���
   //���������û��ύ�Ĵ𰸵��ַ���
   testContent="",
   selection="";
   int score=0;         //�����ߵĵ÷�
   boolean ���ֽ���=false;
   File f=null;
   FileReader in=null;
   BufferedReader buffer=null;
   public void setFilename(String name){
      filename=name; 
     //��ѡ�����µĿ����ļ��󣬽��û��Ĵ��ַ������
     //��������Ϊ0
      score=0;
      selection="";
      ���ֽ���=false;
      //��ȡ�����ļ��ĵ�һ�У���׼��
      try{ f=new File(filename);
           in=new FileReader(f);
           buffer=new BufferedReader(in); 
           correctAnswer=(buffer.readLine()).trim();//��ȡһ��,ȥ��ǰ��ո�
      }
      catch(Exception e){
           testContent="û��ѡ��"+f.getAbsolutePath()+"����";
           buffer=null;
      }
  }
  public String getFilename(){
      return filename;
  }
  public String getTestContent(){  //��ȡ���������
     try { String s=null;
           StringBuffer temp=new StringBuffer();
           if(buffer!=null) { //����û�ѡ���������ļ���buffer�Ͳ��ǿն���
              while((s=buffer.readLine())!=null){  //����ȡĳ������
                if(s.startsWith("**")) //���������־
                   break;
                temp.append(s);
                if(s.startsWith("endend")){ //�����ļ�������־
                   in.close();             //�رպ��ļ�������
                   buffer.close(); 
                }
                 testContent=new String(temp);  
               }
            }
            else{
               testContent=new String("û��ѡ��"+f.getAbsolutePath()+"����");
            }
     }
     catch(Exception e){
           testContent="����������,���Խ����ˣ���";
           try{  in.close();
                 buffer.close();
           }
           catch(IOException exp){}
     }
     return testContent;
  }
  public void setSelection(String s){
     selection=selection+s; //���û��ύ�Ĵ�����β�ӵ�selection
  }
  public int getScore(){
     int length1=selection.length();
     int length2=correctAnswer.length();
     int i=length1-1;               //�û��ύ�ĵ�i�����selection�е�λ��
     if((i!=-1)&&(i<=length2-1)){   //�ж�����
       if((selection.charAt(i)==correctAnswer.charAt(i))&&(���ֽ���==false))
          score++;
       if(i==length2-1)
         ���ֽ���=true;
     }
    return score;
  }
}