package updown.main;

import java.util.Random;
import java.util.Scanner;

public class GameManagerUpDown {
	
	public final String gameName = "���ٿ�";
	
	public void gameStart() {
		System.out.println(gameName + " ���ӽ��� ~~~");
		
		// ��ǻ�Ͱ� ���� ���� �ϳ� �����ϰ� �ϰ�
		// ���� �ϳ� �ް�
		// ���ٿ� ������ְ�
		// Ʋ���� �ٽ��ϰ� �ϰ�
		// ���߸� �����Դϴ� 
		
		//��������
//		int a = (int) ((Math.random()*100) + 1);
		
		
		int a = new Random().nextInt(50);
//		Random randomObject = new Random();
//		int r = randomObject .nextInt(50);
		
		
		//�Է�
		Scanner sc = new Scanner(System.in);
		
		//���ٿ� �Ǵ�
		while(true) {
			int input = sc.nextInt();
			if(input > a ) {
				System.out.println("�ٿ�");
			} else if( input < a) {
				System.out.println("��");
			} else if( input == a ) {
				System.out.println("�����Դϴ�.");
			} else {
				System.out.println("�ٸ� ���� �Է����ּ���");
			}
		
		
		
		

		
		
		
		
		
		
	}

	
	}
	
}
