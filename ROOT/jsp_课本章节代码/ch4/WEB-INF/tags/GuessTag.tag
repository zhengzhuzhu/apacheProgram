<%@ tag pageEncoding="GB2312" %>
<%@ attribute name="number" required="true" %>  
<%@ variable name-given="message" scope="AT_END" %>
  <%  String mess="";
      Integer integer=(Integer)session.getAttribute("save");
      int realnumber=integer.intValue();
      int guessNumber=0;
      boolean boo=true;
      try{  guessNumber=Integer.parseInt(number);
      }
      catch(Exception exp){
            boo=false;
      }
      if(boo){
        if(guessNumber==realnumber){
           int n=((Integer)session.getAttribute("count")).intValue();
           n=n+1;
           session.setAttribute("count",new Integer(n));
           mess="���¶���,���ǵ�"+n+"�β²�";
        } 
        else if(guessNumber>realnumber){
           int n=((Integer)session.getAttribute("count")).intValue();
           n=n+1;
           session.setAttribute("count",new Integer(n));
           mess="���´���,���ǵ�"+n+"�β²�";
        }
        else if(guessNumber<realnumber){
           int n=((Integer)session.getAttribute("count")).intValue();
           n=n+1;
           session.setAttribute("count",new Integer(n));
           mess="����С��,���ǵ�"+n+"�β²�";
        }
        else if(number.equals("�㻹û��ʼ�²�")) {
           mess="�㻹û��ʼ�²�";
        }
        jspContext.setAttribute("message",mess); //������message���ظ�JSPҳ��
      }
      else{
         jspContext.setAttribute("message","���������Ĳ²�");//������message���ظ�JSPҳ��
      }
  %>
