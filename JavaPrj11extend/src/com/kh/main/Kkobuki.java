package com.kh.main;

public class Kkobuki  {

	//생성자(기본생성자가 있으면 불완전한 객체가 생성될 수 있으니 있으면 안됨.)
	public Kkobuki(int l, char t) {
		this.level = l;
		this.type = t;
	}
	
	

	private final String name = "꼬부기";
	private int level;
	private char type; //E,W,F 타입(전기,물,불)
	
	//private은 무단 수정을 못하므로 편법으로 레벨을 가져오는 public 메소드를 만들어서 level을 수정한다.
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
	
	
	
	//몸통박치기
	public void bodyAttack() {
		System.out.println(name + " 몸통 박치기 !!!");
	}
	//물대포
	public void waterCanon() {
		System.out.println("물대포 !!!");
	}
	
	//거품세례
	public void bubble() {
		System.out.println("거품세례 !!!");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
