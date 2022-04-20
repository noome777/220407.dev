package game.main;

import java.util.Scanner;

import rcp.main.GameManagerRcp;
import updown.main.GameManagerUpDown;

public class Main {

	public static void main(String[] args) {

		//��ĳ�� Ŭ���� ������ �̿��ؼ� ��ü ����, sc��� ������ �Ҵ�
		Scanner sc = new Scanner(System.in);
		
		//���� 2��
		//rcp
		//updown
		
		//����(���� �Ŵ���) ä�� (��ü �غ� == ��ü �̸� �����س���)
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
