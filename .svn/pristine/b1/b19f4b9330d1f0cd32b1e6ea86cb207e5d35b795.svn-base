package javahomework.a18_yoonyoungju;
/*
���뻾(1�떒?��)
�� ?�꾩�?
�궒 field : ?�꾩쥖紐�?, (?��?���?)
�궒 �깮�꽦�옄(?�꾩쥖紐�? �엯�젰)
�궒 input( �엯湲덉�? )
�� @@@�떂 @@@�썝 �엯湲덊뻽�?���땲�떎.(�쁽�옍�븸@@)
�궒 output( ?��?��?���븸)
�� @@@�떂 @@@�썝 ?��?��?���뻽�뒿�땲�떎.(�쁽�옍�븸@@)

*/
class Bank{
	String accountname;
	int total;
	int inprice;
	int outprice;
	
	Bank(String accountname){
		this.accountname=accountname;
	}
	int money(String accountname, int inprice, int outprice){
		this.accountname=accountname;
		this.inprice=inprice;
		this.outprice=outprice;
		total=inprice+(-outprice);
		return total;
	}
	void input(){
		System.out.print(accountname+"�떂"+ inprice+"�썝 �엯湲덊뻽�?���땲�떎.");
		System.out.print("(�쁽�옍�븸"+total+")");
		this.total = total;
		
	}
	void output(){
		System.out.print(accountname+"�떂"+ outprice+"�썝 ?��?��?���뻽�뒿�땲�떎.");
		System.out.print("(�쁽�옍�븸"+total+")");
		this.total = total;
	}
	
}
public class Method_exp_lv1_2 {

	public static void main(String[] args) {
			// TODO Auto-generated method stub
			Bank b = new Bank("�쑄�쁺二�");
			b.money("�쑄�쁺二�", 12000, 0);
			b.input();
			b.money("�쑄�쁺二�", 0, 20000);
			b.output();
	}

}





