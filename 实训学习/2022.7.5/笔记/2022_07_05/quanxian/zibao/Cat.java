package com.neu.quanxian.zibao;

import com.neu.quanxian.Animal;

public class Cat extends Animal{
   public static void main(String[] args) {
	   //protected修饰的属性和方法在不同包的子类中可以被访问
	 Cat c=new Cat();
	 c.age=2;
	 c.eat();
	 c.jiao();
}
}
