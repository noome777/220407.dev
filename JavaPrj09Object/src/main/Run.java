package main;

import practice.MyClass01;

public class Run {

	public static void main(String[] args) {

		System.out.println("Run Ŭ������ main �޼ҵ� ȣ���...");
		System.out.println("=========================");
		
		//��ü ����(MyClass01 Ŭ���� ������ �̿��ؼ� ��ü ����)
//			MyClass01 mc01 = new MyClass01(); //Ŭ������ mc01�̶�� ���������� Ÿ���� �� �� �ִ�. mc01�� main�޼ҵ� ���ξȿ� �ִ� �����̹Ƿ� ��������ok.
			
		//��ü�� �޼ҵ� ȣ��(MyClss01 Ŭ���� ������ myMethod01 ȣ��)
//			mc01.myMethod01(); //.�� �ش� ��ü�� �����ϱ� �����̴�. mc01�̶�� ���������� ���� .��ü�� �����ϰ� �� �ּҰ��� mc01�� ���� mc01(������)�� ���� ��ü myMethod�� �����ϰڴ�.
//			mc01.myMethod02(); //�� ��ü�� ���� �������� �޼ҵ带 ȣ���� �� �ִ�. (myMethod01, myMethod02```)
//		
		//��ü�� �ν��Ͻ��� ���� �����̴�.
		//��ü�� heap�޸𸮿� �Ҵ�ȴ�.
		/*/
		 * 
		 * <��ü����>
		 * 
		 * ���������� stack��
		 * �ν��Ͻ�����(�������)�� heap��
		 * Ŭ��������(static)�� static��
		 * 
		 * Ŭ�������� -->�������
		 * �޼ҵ峻�� -->�������� (�޼ҵ� ����� �޸𸮿� �����Ǿ��ٰ� �޸� ����ÿ� �������.)
		 * 
		 * 
		 */
		
		//��ü����
		MyClass01 mc = new MyClass01();
		mc.age = 20;
		mc.name = "ȫ�浿";
		mc.introduce();
		
		
		
		
		
		
		
	}

}
