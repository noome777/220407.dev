package com.kh.main;

public class Pikachu {

	//�����ڰ� �ƹ��͵� ������. JVM(��ǻ��)�� �⺻�����ڸ� �������
	
	//������0
//	public Pikachu() {
//		
//	}
	
	
	
	//������1
	public Pikachu(int x, char b) {
		this.level = x;
		this.type = b;
	} //��ü�� create���ִ� ���Ұ� ���ÿ� 0�̾��� ������ 1��, null�� Ÿ���� E�� �������ִ� ���̴�. 
	
	
	//������2
//	public Pikachu(int num, char ch, String msg) {
//		this.level = num;
//		this.type = ch;
//		System.out.println(msg);
//		
//	}
	
	
	//������
	private final String name = "��ī��";
	private int level; //�ʵ�
	private char type; //E,W,F Ÿ��(����,��,��)
	
	
	//private�� ���� ������ ���ϹǷ� ������� ������ �������� public �޼ҵ带 ���� level�� ����.(�ܺο��� �������� ���ϵ��� private���� ����� �ִ� ���� ĸ��ȭ�̴�.)
	public int getLevel() {  //�ʵ忡 �ִ� ������ �����´� get
		return this.level;
	}
	 
	public void setLevel(int level) {  //�ʵ忡 �ִ� ������ �����Ѵ�.(���ܼ���) set
		this.level =level;
	}
	
	public char getType() {
		return this.type;
	}
	
	public void setType(char type) {
		this.type = type;
	}
	
	
	
	//�����ġ��
	public void bodyAttack() {
		System.out.println(name + " ���� ��ġ�� !!!");
	}
	
	//�鸸��Ʈ
	public void millionVolt() {
		System.out.println("�鸸��Ʈ ~~~~ !!!");	
	}
	
	//�����Ʈ
	public void thunderVolt() {
		System.out.println("�����Ʈ ~~~~ !!!");
	}
	
	
}
