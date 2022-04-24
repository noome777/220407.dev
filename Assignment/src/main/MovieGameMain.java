package main;

import java.util.Scanner;


import com.kh.assg.KorMovie;



public class MovieGameMain {
	
	String name;
	public static boolean finish = false;
	static Scanner sc = new Scanner(System.in);
	

	public static void main(String[] args) {

		System.out.println("==========================");
		System.out.println("      한국 영화 제목을 맞추기 !  ");
		System.out.println("==========================\n");
		System.out.println("ID를 입력해주세요.");
		
		String id = sc.nextLine();
		
		
		System.out.println( id+ " 님 환영합니다 !\n");
		
		System.out.println("계속하려면 아무키나 입력하세요.");
		String zero = sc.nextLine();
		System.out.println("GAME START !!!!      ");
	
		
		
		//영화 장르 객체 생성
		KorMovie km = new KorMovie();
		
		while(!MovieGameMain.finish) {
				
		//문제 내기
		km.showKor();
		
		//게임 더 하기
		km.more();
	
		}
		
		System.out.println("게임을 종료합니다.");
	
		
		
		
	}//main

}//class
