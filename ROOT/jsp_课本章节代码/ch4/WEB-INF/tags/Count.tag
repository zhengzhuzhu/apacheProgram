<%@ tag import="java.io.*" %>
<FONT Size=4>
<%!  int number=0; 
     File file=new File("count.txt") ;   
     synchronized void countPeople(){ //������ʴ�����ͬ������
        if(!file.exists()){
           number++;
           try { file.createNewFile();
                 FileOutputStream out=new FileOutputStream("count.txt");
                 DataOutputStream dataOut=new DataOutputStream(out);
                 dataOut.writeInt(number);
                 out.close();
                 dataOut.close();
           }
           catch(IOException ee){}
           }
        else{
           try{  FileInputStream in=new FileInputStream("count.txt");
                 DataInputStream dataIn=new DataInputStream(in);
                 number=dataIn.readInt();
                 number++;
                 in.close();
                 dataIn.close();
                 FileOutputStream out=new FileOutputStream("count.txt");
                 DataOutputStream dataOut=new DataOutputStream(out);
                 dataOut.writeInt(number);
                 out.close();
                 dataOut.close();
           }
           catch(IOException ee){}
        }
     }
%>
<%   String str=(String)session.getAttribute("count");
     if(str==null){
        countPeople();
        String personCount=String.valueOf(number);
        session.setAttribute("count",personCount);
     }
%>
<P><P>���ǵ�<%=(String)session.getAttribute("count")%>
      �����ʱ���վ���û���
</Font>
