/* 숙제
 은행에 가서(2단계)
 1) Account (계좌계정)
 2) field명 계정명, 입금액, 출금액, 총잔액, 날짜, 내용
 3) 생성자1 계정명 입력
 4) 생성자2 계정명, 초기입금액
 5) save(입금액, 날짜)
 		- 계산처리
 		- return 입금된 금액
 6) withdarw(출금액, 날짜)
 7) print()
 		날짜 용돈 입금액 출금액 총잔액

*/
package javahomework.a13_SeoJunghyo;

class Account{
	String name;
	int depositMoney;
	int withdrawMoney;
	int nowMoney;
	String who;
	String date;
	
	Account(String name){
		this.name=name;
	}
	Account(String name, int nowMoney){
		this.name=name;
		this.nowMoney=nowMoney;
	}
	int deposit(int depositMoney, String date, String who){
		this.nowMoney+=depositMoney;
		print(date, "입금", depositMoney, withdrawMoney, nowMoney, who);
		return depositMoney;
	}
	int deposit(int depositMoney, String date){
		this.nowMoney+=depositMoney;
		print(date, "입금", depositMoney, withdrawMoney, nowMoney, name);
		return depositMoney;
	}
	int withdraw(int withdrawMoney, String date, String who){
		this.nowMoney-=withdrawMoney;
		print(date, "출금", depositMoney, withdrawMoney, nowMoney, who);
		return withdrawMoney;
	}
	int withdraw(int withdrawMoney, String date){
		this.nowMoney-=withdrawMoney;
		print(date, "출금", depositMoney, withdrawMoney, nowMoney, name);
		return withdrawMoney;
	}
	void print(String date, String staus, int depositMoney, int withdrawMoney, int nowMoney, String name){
		if(nowMoney<withdrawMoney){
			System.out.println(name+"님. 잔고가 "+withdrawMoney+"원 부족하여 출금을 할수가 없습니다.");
		}else{
			System.out.println(date+"\t\t"+staus+"\t\t"+depositMoney+"원\t\t"+withdrawMoney+"원\t\t"+nowMoney+"원"+"\t\t"+name);
		}
	}
}	
public class a02_homework_bank2_0419 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Account myAccount = new Account("Ronaldo");
		System.out.println("\n"+myAccount.name+"님의 통장");
		System.out.println("날짜\t\t\t입출금\t\t 입금액\t\t출금액\t\t현재잔고\t\t입출금자");
		myAccount.deposit(20000, "2017-12-17");
		myAccount.deposit(30000, "2017-12-18");
		myAccount.withdraw(30000, "2017-12-18");
		myAccount.deposit(30000, "2017-12-18", "Messi");
		myAccount.deposit(30000, "2017-12-18", "Rooney");
		myAccount.deposit(300000, "2017-12-18", "Real Madrid");
		
		Account trashAccount = new Account("Messi",200);
		System.out.println("\n"+trashAccount.name+"님의 통장");
		System.out.println("날짜\t\t\t입출금\t\t 입금액\t\t출금액\t\t현재잔고\t\t입출금자");
		trashAccount.deposit(200,"2017-04-12");
		trashAccount.deposit(200,"2017-04-12");
		trashAccount.deposit(20000,"2017-04-12","Neymar");
			
		}

	}


