package javahomework.a18_yoonyoungju;
/*
  �옄湲곗?��媛�(1�떒?��)
�� field : �씠?���?, �궗�뒗?��, �굹�씠
�궒 �깮�꽦�옄(�씠?���? �엯�젰)
�궒 inputData (�궗�뒗?��, �굹�씠)
�궒 introMyself() : ?��?��?�� 泥섎?��.
�궒 �궡�씠?��꾩� @@�씠?��, �굹�씠�뒗 @@�씠硫�, �궗�뒗 ?�녹�?@@@�엯�땲�떎. 
 */
class Myinfo{
	String name;
	String place;
	int age;
	Myinfo(String name){
		this.name=name;
	}
	void inputData(String place, int age){
		this.place = place;
		this.age = age;
	}	
	void introMyself(){
		System.out.print("�궡 �씠?��꾩�"+name+"�씠?��, �굹�씠�뒗"+age+"�씠硫�, �궗�뒗?�녹�?"+place+"�엯�땲�떎");
	}
	
}
public class Method_exp_lv1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Myinfo m = new Myinfo("�쑄�쁺二�");
		m.inputData("�씤泥�", 26);
		m.introMyself();
	}

}


