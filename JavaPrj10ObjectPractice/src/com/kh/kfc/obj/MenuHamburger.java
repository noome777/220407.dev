package com.kh.kfc.obj;

import java.util.Scanner;

import com.kh.kfc.main.Main;

public class MenuHamburger {
      												//�޼ҵ� �ۼ���                                       ������ �ۼ���
      												//[����������] ��ȯŸ�� �޼ҵ�� (..) {������ ����}          [����������] Ŭ������(...) {������ ����}
	// ������(==�⺻ ������) // [����������] Ŭ�����̸�(){}
	 public MenuHamburger() {} //�⺻�����ڴ� �����ȴ�. �����ڰ� ������ ��ü�� ���� �� ����. �����Ǳ⶧���� �𸣴� �ͻ���. �����ڴ� ���� ���Ҹ� �ϱ⶧����(��ü �ʱ�ȭ�� ����ϹǷ�) return Ÿ���� ����.
	                           //Ŭ������ ��ü�� ����� ���� �� �ʿ��� ���赵�̰�, �����ڰ� ������ ��ü�� ���� ���� ���� --> Ŭ���� �ȿ��� �����ڰ� �� ���ԵǾ� �־�� �Ѵ�.	
	Scanner sc = new Scanner(System.in);
	
	public void showMenuHam() {
		System.out.println("======�ܹ���=====");
		System.out.println("1. �Ұ�� ���� (5000��)");
		System.out.println("2. Ÿ�� ����(8000��)");
		System.out.println("3. ¡�� ����(7000��)");

		int menu = Integer.parseInt(sc.nextLine());
		
		switch(menu) {
		case 1: 
			Main.total += 5000;  //MainŬ������ �ִ� total�̶�� Ŭ������ ã�ư��� 5000�� �����ش�.
			Main.menuAll += "�Ұ�� ����";
			System.out.println("�Ұ�� ���� (5000��) �� �����ϼ̽��ϴ�.");
			break;
		case 2:	
			Main.total += 8000; 
			Main.menuAll += "Ÿ�� ����";
			System.out.println("Ÿ�� ���� (8000��) �� �����ϼ̽��ϴ�.");	
			break;
		case 3:	
			Main.total += 7000; 
			Main.menuAll +="¡�� ����";
			System.out.println("¡�� ���� (7000��) �� �����ϼ̽��ϴ�");	
			break;
		default : 
			System.out.println("�׷� �ܹ��� ����");
		}
		
		
		
		
		
		
	}
	
	
}
