package com.neu.chongxie;

public class Dog extends Animal{
	private String birth;
	
	public void jiao(){
		System.out.println("旺旺叫");
		 
	}
	
	protected void eat(){
		System.out.println("喜欢吃骨头");
	}
	
	public static void main(String[] args) {
		 Dog d=new Dog();
		 //调用的方法是重写父类的方法
		 d.eat();
		 d.jiao();
	}

}
