package com.neu.static1;

public class Person {
  private int id;
  private static String name;  //静态的成员变量
  private static int age;   //静态的成员变量
  
 /* 
  * static不能修饰构造器
  * public static Person(){
	  
  }*/
  
  public static void study(){
	  //静态方法中只能访问静态成员
	     name="张三";
	      //id=1; //非静态成员不能被调用
	    //this.age=21; //静态方法中不能使用this关键字
	  System.out.println("好好学习");
  }
  
  public void work(){
	  System.out.println("努力工作好好赚钱");
  }
  
  //静态代码块
  static{
	  System.out.println("这是一个静态代码块");
  }
  
 public static void main(String[] args) {
	 /*//通过类名调用静态的成员变量
	  Person.age=21;
	  Person.name="张三";
  //通过对象调用
	  Person p=new Person();
	  p.age=20;
	  p.name="李四";*/
	  
	  
	  //如果在其他类中可以通过类名或者是对象名点方法名
	  Person.study();
	  Person p=new Person();
	  p.study();
	  //静态方法可以在本类中直接调用，非静态方法不能直接代用
	 // work();
	   study();
}
}
