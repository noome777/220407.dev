package rcp.main;

import java.util.Random;
import java.util.Scanner;

public class GameManagerRcp {
	
	public final String gameName = "가위바위보";
			
	public void gameStart() {
		System.out.println(gameName + " 게임 시작 ~~~");
		
		//가위바위보 게임
		
		//컴퓨터 패 선택
		int comNum = new Random().nextInt(3) + 1;
		String com = "";
		
		switch(comNum) {
		case 1 : com  = "가위"; break;
		case 2 : com  = "바위"; break;
		case 3 : com = "보"; break;
		default : System.out.println("errer !!!");
		}
		
		
		
		//사용자 입력
		Scanner sc = new Scanner(System.in);
		String user = sc.nextLine();
		
		System.out.println("com: "+com);
		System.out.println("user: "+user);
		
		
		//판단
		//문자열끼리 비교하려면, 문자열.equals(문자열);
		if(com.equals("가위")) {
	         if(user.equals("가위")) {
	            System.out.println("비김");
	         }else if(user.equals("바위")) {
	            System.out.println("사용자 승");
	         }else {
	            System.out.println("컴퓨터 승");
	         }
	      }
	      else if(com.equals("바위")) {
	         if(user.equals("가위")) {
	            System.out.println("컴퓨터 승");
	         }else if(user.equals("바위")) {
	            System.out.println("비김");
	         }else {
	            System.out.println("사용자 승");
	      
		
		
		}
	}
		
	}
	}

