package com.kh.kfc.obj;

import java.util.Scanner;

import com.kh.kfc.main.Main;

public class Menu {
	
	
	Scanner sc = new Scanner (System.in);
	
	//�޴��� �����ֱ�
	public int showMenu() {
		System.out.println("=========Menu=========");
		System.out.println("1. �ܹ���");
		System.out.println("2. ����");
		System.out.println("3. ���̵�");
		
		
		int menu = Integer.parseInt(sc.nextLine()); //string Ÿ���� ���ڿ��� int�� ��ȯ�ϴ� �޼ҵ�
		
		
		switch(menu) {
		case 1:  return 1;       //break; //return�� ������ ������ ���� ���� ����� ���� �����Ƿ� break�� ���� ���ָ� �� ��.
        case 2:  return 2;       //break;
	    case 3:  return 3;       //break;
		default : System.out.println("error!!!(�޴� ���� �� ���� �߻�)"); 
		return -1;
		}
	}
		
	//�ֹ� �� �Ұ��� �����
		public void more() {
			System.out.println("�߰� �ֹ��� �Ͻðڽ��ϱ�? (Y/N)");
			String answer = sc.nextLine();
//			if(answer.equals("Y")) {
//				Main.finish = false;
//			} else {
//				Main.finish = true;
//			}
			Main.finish = answer.equals("Y") || answer.equals("y")? false: true;
	
	
	}
}
