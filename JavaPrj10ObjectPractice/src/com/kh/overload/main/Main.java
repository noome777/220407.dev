package com.kh.overload.main;

import com.kh.overload.test.Test;

public class Main {

	public static void main(String[] args) {

		//������ ȣ���� ���ؼ� ��ü����. ������ ��ü�� ������ �Ҵ�
		Test t = new Test();
//		Test t = new Test("�ȳ��ϼ���");
		
		
//		System.out.println("t.name: "+ t.name);
	}

}

//�޼ҵ� �����ε� (�Ű������� �ٸ��� �Ͽ� �޼ҵ带 �ۼ�, ���� �̸��� �޼ҵ带 ������ ����� ��)
//������ �����ε� (�Ű������� �ٸ��� �Ͽ� �����ڸ� �ۼ�, ���� �̸��� �����ڸ� ������ ����� ��)
//��, �̸��� ���ƾ��ϰ� �Ű������� �޶�� ��.
//����Ÿ���� �����ε����� ��� x 

//Test t = new Test();
//t.name = "�̾Ƹ�"       
//----->  Test t = new Test("�̾Ƹ�");        �̷��� ���� t.name�� ���Ծ name���� null�� ��Ȳ�� ������ ���� ,��������