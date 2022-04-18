package method01;

import java.util.Scanner;

public class MyClass {
	
	public void test() {
		System.out.println("안녕하세요.");
		
		Scanner sc = new Scanner(System.in);
		int x = sc.nextInt();
		
		judge(x);
		
		
		
	}
	
	public void judge(int x) {
		if(x < 0) {
			System.out.println("양수");
		}else if(x < 0) {
			System.out.println("음수");
		}else {
			System.out.println("zero");
		}
		
	}
	
}
