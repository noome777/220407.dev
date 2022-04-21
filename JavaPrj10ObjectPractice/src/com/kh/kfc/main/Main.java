package com.kh.kfc.main;

import com.kh.kfc.obj.Menu;
import com.kh.kfc.obj.MenuBeverage;
import com.kh.kfc.obj.MenuHamburger;
import com.kh.kfc.obj.MenuSide;

public class Main {
	
	//�������� ������ �� �ִ� â�� ���� ����. ���α׷��� ������ ������ ���� ������ --> static�� ����Ѵ�.
	public static int total;//static��  �ٸ� Ŭ�������� ����ƽ��� ������ ���� ������� (Main.total, Main.menuAll, Main.finish ó��)(Main�� ���� Ŭ���� ��������� ������ �����ϱ�� ��)
	public static String menuAll = ""; //���ڿ��� ��������� ������ NULL + "ABC"�� �Ǳ⶧���� ����� ����� ���� �ʴ´�. ���� "" + "ABC"�� ���ִ°� 
	public static boolean finish = false;

	
	public static void main(String[] args) { //���θ޼������ ���α׷��� ���۵ȴ�.

		System.out.println("KFC �� ���� �� ȯ���մϴ�. ");
		
		//�޴��� ��ü ����
		Menu menu = new Menu();
		MenuHamburger menuham = new MenuHamburger();
		MenuBeverage menuBev = new MenuBeverage();
		MenuSide menuSide = new MenuSide();
		
		
		do {
			//�޴� ���� (��з�)
			int menuNum= menu.showMenu();//Menu Ŭ������ ShowMenu ȣ���ϱ�
			
			
			//�󼼸޴��� �����ֱ�. switch���� ����ص� ��� ����.
			if(menuNum == 1) {
				//�ܹ��� �޴��� �����ֱ�
				menuham.showMenuHam();
			} else if(menuNum == 2) {
				//���� menu�޴��� �����ֱ�
				menuBev.showMenuBeverage();
			} else if(menuNum == 3 ){
				//���̵� �޴��� �����ֱ�
				menuSide.showMenuSide();
			} else {
				//����ڰ� �߸� ��
				System.out.println("���� �߸� ����");
			}
			
			
			//�ֹ� �� �Ұ���?
			menu.more();
			
		} while(!Main.finish);//�ǴϽ��� �ƴҶ� �ݺ��Ǵ� ����.
		
		
		//���� ��� ���
		System.out.println("�ֹ��Ͻ� �޴��� : " + Main.menuAll +" �Դϴ�.");
		System.out.println("�� ������ : "+ Main.total + " �� �Դϴ�.");
	
	} //main�޼��尡 ������ ���α׷��� �����Ѵ�.
	

}
