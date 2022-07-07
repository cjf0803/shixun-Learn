package com.neu.quanxian;

public class Animal {
  public int id;
  String name;
  protected int age;
  private String birth;
  
  public void eat(){
	  System.out.println("喜欢吃");
  }
  
  protected void jiao(){
	  System.out.println("喜欢叫");
  }
  public static void main(String[] args) {
	  Animal a=new Animal();
	  //private只能在本类中被访问
	  a.birth="2021";
}
}
