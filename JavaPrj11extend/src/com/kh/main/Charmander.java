package com.kh.main;

public class Charmander {
	
	//������
	public Charmander(int level, char type) {
		this.level = level;
		this.type = type;
	}
	
	//������
	private final String name ="���̸�";
	private int level;
	private char type; //E,W,F Ÿ��(����,��,��)
	
	
	public int getLevel() {
		return this.level;
	}
	
	public void setLevel(int level) {
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
	
	
	
	//������ȭ
	public void speedAttack() {
		System.out.println("������ȭ !!!");
	}
		
	//�Ҳɼ���
	public void fire() {
		System.out.println("�Ҳɼ��� !!!");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
