package method01;

import java.util.Scanner;

public class MyClass {
	
	public void test() {
		System.out.println("�ȳ��ϼ���.");
		
		Scanner sc = new Scanner(System.in);
		int x = sc.nextInt();
		
		judge(x);
		
		
		
	}
	
	public void judge(int x) {
		if(x < 0) {
			System.out.println("���");
		}else if(x < 0) {
			System.out.println("����");
		}else {
			System.out.println("zero");
		}
		
	}
	
}
