package com.neu.zhaunxing;

public class Cat extends Animal{
	private String birh;
	
	public void daiLaoShui(){
		System.out.println("喜欢捉老鼠");
	}
	

	  public static void main(String[] args) {
		 // Cat c=(Cat)new Animal();
		    //经过一向上转型
		  Animal a=new Cat();
		     //将父类强制转换成子类
		  Cat c=(Cat)a;
		    c.name="小猫";//父类中的属性
		    c.birh="2021";//子类中属性
		    c.daiLaoShui();//子类中的方法
		    c.jiao();//父类中的方法
	}
}
