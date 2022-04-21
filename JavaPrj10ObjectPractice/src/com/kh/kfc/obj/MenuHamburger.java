package com.kh.kfc.obj;

import java.util.Scanner;

import com.kh.kfc.main.Main;

public class MenuHamburger {
      												//메소드 작성은                                       생성자 작성은
      												//[접근제한자] 반환타입 메소드명 (..) {실행할 내용}          [접근제한자] 클래스명(...) {실행할 내용}
	// 생성자(==기본 생성자) // [접근제한자] 클래스이름(){}
	 public MenuHamburger() {} //기본생성자는 생략된다. 생성자가 없으면 객체를 만들 수 없다. 생략되기때문에 모르는 것뿐임. 생성자는 생성 역할만 하기때문에(객체 초기화만 담당하므로) return 타입이 없다.
	                           //클래스는 객체를 만들기 위해 꼭 필요한 설계도이고, 생성자가 없으면 객체를 만들 수도 없음 --> 클래스 안에는 생성자가 꼭 포함되어 있어야 한다.	
	Scanner sc = new Scanner(System.in);
	
	public void showMenuHam() {
		System.out.println("======햄버거=====");
		System.out.println("1. 불고기 버거 (5000원)");
		System.out.println("2. 타워 버거(8000원)");
		System.out.println("3. 징거 버거(7000원)");

		int menu = Integer.parseInt(sc.nextLine());
		
		switch(menu) {
		case 1: 
			Main.total += 5000;  //Main클래스에 있는 total이라는 클래스를 찾아가서 5000을 더해준다.
			Main.menuAll += "불고기 버거";
			System.out.println("불고기 버거 (5000원) 을 선택하셨습니다.");
			break;
		case 2:	
			Main.total += 8000; 
			Main.menuAll += "타워 버거";
			System.out.println("타워 버거 (8000원) 을 선택하셨습니다.");	
			break;
		case 3:	
			Main.total += 7000; 
			Main.menuAll +="징거 버거";
			System.out.println("징거 버거 (7000원) 을 선택하셨습니다");	
			break;
		default : 
			System.out.println("그런 햄버거 없음");
		}
		
		
		
		
		
		
	}
	
	
}
