package com.kh.kfc.main;

import com.kh.kfc.obj.Menu;
import com.kh.kfc.obj.MenuBeverage;
import com.kh.kfc.obj.MenuHamburger;
import com.kh.kfc.obj.MenuSide;

public class Main {
	
	//누구든지 접근할 수 있는 창고 같은 공간. 프로그램이 시작할 때부터 끝날 때까지 --> static을 사용한다.
	public static int total;//static은  다른 클래스에서 스태틱명과 변수명 같이 써줘야함 (Main.total, Main.menuAll, Main.finish 처럼)(Main은 같은 클래스 내에서라면 생략이 가능하기는 함)
	public static String menuAll = ""; //빈문자열을 만들어주지 않으면 NULL + "ABC"가 되기때문에 제대로 출력이 되지 않는다. 따라서 "" + "ABC"로 해주는것 
	public static boolean finish = false;

	
	public static void main(String[] args) { //메인메서드부터 프로그램이 시작된다.

		System.out.println("KFC 에 오신 걸 환영합니다. ");
		
		//메뉴판 객체 생성
		Menu menu = new Menu();
		MenuHamburger menuham = new MenuHamburger();
		MenuBeverage menuBev = new MenuBeverage();
		MenuSide menuSide = new MenuSide();
		
		
		do {
			//메뉴 선택 (대분류)
			int menuNum= menu.showMenu();//Menu 클래스의 ShowMenu 호출하기
			
			
			//상세메뉴판 보여주기. switch문을 사용해도 상관 없다.
			if(menuNum == 1) {
				//햄버거 메뉴판 보여주기
				menuham.showMenuHam();
			} else if(menuNum == 2) {
				//음료 menu메뉴판 보여주기
				menuBev.showMenuBeverage();
			} else if(menuNum == 3 ){
				//사이드 메뉴판 보여주기
				menuSide.showMenuSide();
			} else {
				//사용자가 잘못 고름
				System.out.println("숫자 잘못 누름");
			}
			
			
			//주문 더 할건지?
			menu.more();
			
		} while(!Main.finish);//피니쉬가 아닐때 반복되는 것임.
		
		
		//최종 결과 출력
		System.out.println("주문하신 메뉴는 : " + Main.menuAll +" 입니다.");
		System.out.println("총 가격은 : "+ Main.total + " 원 입니다.");
	
	} //main메서드가 끝나면 프로그램도 종료한다.
	

}
