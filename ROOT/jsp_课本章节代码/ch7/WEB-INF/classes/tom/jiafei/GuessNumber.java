package tom.jiafei;
public class GuessNumber{
   int answer=0,    //���²������
   guessNumber=0,   //�û��Ĳ²�
   guessCount=0;    //�û��²�Ĵ���
   String result=null; 
   boolean right=false;
   public void setAnswer(int n){
      answer=n;
      guessCount=0;
   }
   public int  getAnswer(){
      return answer;
   }
   public void  setGuessNumber(int n){
      guessNumber=n;
      guessCount++;
      if(guessNumber==answer){
         result="��ϲ���¶���";
         right=true;
      }
      else if(guessNumber>answer){
         result="�´���";
         right=false;  
     }
     else if(guessNumber<answer){
         result="��С��";
         right=false; 
     }   
   }
   public int getGuessNumber(){
      return guessNumber;
   }
   public int getGuessCount(){
      return guessCount;
   }
   public String getResult(){
      return result;
   }
   public boolean isRight(){
      return right;
   }
}
