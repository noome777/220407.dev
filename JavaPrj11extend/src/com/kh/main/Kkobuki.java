package com.kh.main;

public class Kkobuki  {

	//������(�⺻�����ڰ� ������ �ҿ����� ��ü�� ������ �� ������ ������ �ȵ�.)
	public Kkobuki(int l, char t) {
		this.level = l;
		this.type = t;
	}
	
	

	private final String name = "���α�";
	private int level;
	private char type; //E,W,F Ÿ��(����,��,��)
	
	//private�� ���� ������ ���ϹǷ� ������� ������ �������� public �޼ҵ带 ���� level�� �����Ѵ�.
	public int getLevel() {
		return this.level;
	}
	
	public void setLevel(int level) {
		this.level = level;
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
	//������
	public void waterCanon() {
		System.out.println("������ !!!");
	}
	
	//��ǰ����
	public void bubble() {
		System.out.println("��ǰ���� !!!");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
