package com.kh.assg;

import java.util.Random;
import java.util.Scanner;

import main.MovieGameMain;

public class KorMovie {

	Scanner sc = new Scanner(System.in);
	
	public void showKor() {//�������� �ǹ̵� ���ǳ��� û����� �ؿ�� �������α׳� �ϻ�
		
		//�������� �� ���� �̱�
		//if �������� �ʼ������� consonant�� else if �������� ��칮���� actor��, else �������� ���� script�� �����Ѵ�.
		
		
		boolean isCorrect = false;
		int cnt = 0;
		
		
		
		String [] questions = {"���� �ʼ��� �´� ��ȭ�� �����ϱ�� ??", "���� ������ ������ ��ȭ�� �����ϱ�� ??", "���� ���簡 ������ ��ȭ�� �����ϱ�� ??"};
		String [] consonant = {"��������", "������", "���� ����", "��������", "������", "�������� ����", "����"};
		String [] actor = {"���ϴ� ���ϱ�", "���汸 �ȼ���", "���켺 ���ر�", "�ڼ��� ���ϴ�", "���汸 ������", "������ ������", "������ ������"};
		String [] script = {"�� ~ �� ȭ�� ���", "�� ��� ����,,,","���� �θ� �� �� ���� ����, ������","���� ���м���!!","��!! ���� ������ �³�!!!", 
				"�߿�� ~~ �̾��� ~","�� ������̿�"};
		
		Random rand1 = new Random();
		Random rand2 = new Random();
		Random rand3 = new Random();
		Random rand4 = new Random();
		
		
		if(questions[rand1.nextInt(3)] == questions[0] ) {
		
		System.out.println(questions[0]);
		System.out.println(consonant[rand2.nextInt(7)]);
		
		} else if(questions[rand1.nextInt(3)] == questions[1] ) {
			System.out.println(questions[1]);
			System.out.println(actor[rand3.nextInt(7)]);
		} else {
			System.out.println(questions[2]);
			System.out.println(script[rand4.nextInt(7)]);
		}
		
		
		
		
		
		while(true) {
		
		
			String title = this.sc.nextLine();
			cnt += 1;
			
			switch (title) {
			
			case "��������":
				if(title == consonant[0] && title == actor[0] && title == script[0] )
				System.out.println("�������� �����Դϴ�.");
				isCorrect = true;
				break;
				
			case "�ǹ̵�":
				if(title == consonant[1] && title == actor[1] && title == script[1] )
				System.out.println("�ǹ̵� �����Դϴ�.");
				isCorrect = true;
				break;
				
			case "���� ����":
				if(title == consonant[2] && title == actor[2] && title == script[2] )
				System.out.println("���� ���� �����Դϴ�.");
				isCorrect = true;
				break;
				
			case "û�����":
				if(title == consonant[3] && title == actor[3] && title ==  script[3] )
				System.out.println("û�� ���� �����Դϴ�.");
				isCorrect = true;
				break;
				
			case "�ؿ��": 
				if(title == consonant[4] && title == actor[4] && title == script[4] )
				System.out.println("�ؿ�� �����Դϴ�.");
				isCorrect = true;
				break;
				
			case "�������� �׳�":
				if(title == consonant[5] && title == actor[5] && title == script[5] )
				System.out.println("�������� �׳� �����Դϴ�.");
				isCorrect = true;
				break;
				
			case "�ϻ�":
				if(title == consonant[6] && title == actor[6] && title == script[6])
				System.out.println("�ϻ� �����Դϴ�.");
				isCorrect = true;
				break;
				
			default :
				System.out.println("�ٽ� �õ��ϼ���.");
				isCorrect =false;
				break;
			}
		
			
		
			if(isCorrect)
				break;
		}
			
		
		System.out.println(cnt+" ������ �����ϼ̽��ϴ�.\n");
		
		
	}
		
	
		public void more() {
			System.out.println("������ �� �Ͻðڽ��ϱ�? (Y/N)");
			String answer = sc.nextLine();
			
			MovieGameMain.finish = answer.equals("y") || answer.equals("Y")? false : true;
			
			}
		

	
	
}
