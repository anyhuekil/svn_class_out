package javaexp.a06_object.access.story.friendship;

public class Deer {
	void askWhereClothe(){
		WoodCutter w = new WoodCutter();
		//cacheClothe�� ���������ڰ� private �̱⿡
		// ���� package�̴��� ������ �Ұ����ϴ�.!!
//		System.out.println(w.cacheClothe);
	}
}