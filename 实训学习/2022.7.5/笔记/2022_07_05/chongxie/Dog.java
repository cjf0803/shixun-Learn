package com.neu.chongxie;

public class Dog extends Animal{
	private String birth;
	
	public void jiao(){
		System.out.println("������");
		 
	}
	
	protected void eat(){
		System.out.println("ϲ���Թ�ͷ");
	}
	
	public static void main(String[] args) {
		 Dog d=new Dog();
		 //���õķ�������д����ķ���
		 d.eat();
		 d.jiao();
	}

}
