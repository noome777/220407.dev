package game.main;

import java.util.Scanner;

import rcp.main.GameManagerRcp;
import updown.main.GameManagerUpDown;

public class Main {

	public static void main(String[] args) {

		//스캐너 클래스 파일을 이용해서 객체 생성, sc라는 변수에 할당
		Scanner sc = new Scanner(System.in);
		
		//게임 2개
		//rcp
		//updown
		
		//직원(게임 매니저) 채용 (객체 준비 == 객체 미리 생성해놓기)
		GameManagerUpDown gmUpdown = new GameManagerUpDown();
		GameManagerRcp gmRcp = new GameManagerRcp();
		
		
		System.out.println("1: updown");
		System.out.println("2: rcp");
		
		
		int input = sc.nextInt();
		
		if(input == 1) {
			gmUpdown.gameStart();
		} else if(input == 2) {
			gmRcp.gameStart();
		}
		
		
	}//main

}//class
