package main;

import java.util.Scanner;


import com.kh.assg.KorMovie;



public class MovieGameMain {
	
	String name;
	public static boolean finish = false;
	static Scanner sc = new Scanner(System.in);
	

	public static void main(String[] args) {

		System.out.println("==========================");
		System.out.println("      �ѱ� ��ȭ ������ ���߱� !  ");
		System.out.println("==========================\n");
		System.out.println("ID�� �Է����ּ���.");
		
		String id = sc.nextLine();
		
		
		System.out.println( id+ " �� ȯ���մϴ� !\n");
		
		System.out.println("����Ϸ��� �ƹ�Ű�� �Է��ϼ���.");
		String zero = sc.nextLine();
		System.out.println("GAME START !!!!      ");
	
		
		
		//��ȭ �帣 ��ü ����
		KorMovie km = new KorMovie();
		
		while(!MovieGameMain.finish) {
				
		//���� ����
		km.showKor();
		
		//���� �� �ϱ�
		km.more();
	
		}
		
		System.out.println("������ �����մϴ�.");
	
		
		
		
	}//main

}//class
