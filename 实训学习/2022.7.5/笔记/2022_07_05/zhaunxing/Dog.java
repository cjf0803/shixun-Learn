package com.neu.zhaunxing;

public class Dog extends Animal{
  private String pinZhong;
  
  public void kanJia(){
	  System.out.println("看好家");
  }
  
  public void jiao(){
	  System.out.println("汪汪叫");
  }
  
  public static void main(String[] args) {
	  //向上转型
	  Animal a=new Dog();
	  //只能调用的是父类中的属性和方法
	   a.id=1;
	   a.name="小花";
	   a.eat();
	    a.jiao();
}
}
