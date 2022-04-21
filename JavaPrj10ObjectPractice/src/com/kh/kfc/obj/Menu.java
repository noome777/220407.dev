package com.kh.kfc.obj;

import java.util.Scanner;

import com.kh.kfc.main.Main;

public class Menu {
	
	
	Scanner sc = new Scanner (System.in);
	
	//메뉴판 보여주기
	public int showMenu() {
		System.out.println("=========Menu=========");
		System.out.println("1. 햄버거");
		System.out.println("2. 음료");
		System.out.println("3. 사이드");
		
		
		int menu = Integer.parseInt(sc.nextLine()); //string 타입의 문자열로 int로 변환하는 메소드
		
		
		switch(menu) {
		case 1:  return 1;       //break; //return을 만나면 어차피 다음 줄이 실행될 일이 없으므로 break와 같이 써주면 안 됨.
        case 2:  return 2;       //break;
	    case 3:  return 3;       //break;
		default : System.out.println("error!!!(메뉴 선택 중 에러 발생)"); 
		return -1;
		}
	}
		
	//주문 더 할건지 물어보기
		public void more() {
			System.out.println("추가 주문을 하시겠습니까? (Y/N)");
			String answer = sc.nextLine();
//			if(answer.equals("Y")) {
//				Main.finish = false;
//			} else {
//				Main.finish = true;
//			}
			Main.finish = answer.equals("Y") || answer.equals("y")? false: true;
	
	
	}
}
