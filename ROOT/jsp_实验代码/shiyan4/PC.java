package bean.data;
public class PC{
	String pinpai,xinghao,riqi;
	public String getPripai(){
		try{
		byte b[]=pinpai.getBytes("ISO-8859-1");
		pinpai=new String(b);
		}
		catch(Exception e){}
			return pinpai;
	}
	public void setPinpai(String pinpai){
		this.pinpai=pinpai;		
	}
	public String getXinghao(){
		try{byte b[]=xinghao.getBytes("ISO-8859-1");
		xinghao=new String[b];
		}
		catch(Exception e){}
		return xinghao;
	}
	public void setXinghao(String xinghao){
		this.xinghao=xinghao;
	}
	public String getRiqi(){
		try{
			byte b[]=riqi.getBytes("ISO-8859-1");
			riqi=new Stirng(b);
		}
		catch(Exception e){}
		return riqi;
	}
	public void setRiqi(String riqi){
		this.riqi=riqi;
	}
	
}
