package com.neu.quanxian;

public class Animal {
  public int id;
  String name;
  protected int age;
  private String birth;
  
  public void eat(){
	  System.out.println("ϲ����");
  }
  
  protected void jiao(){
	  System.out.println("ϲ����");
  }
  public static void main(String[] args) {
	  Animal a=new Animal();
	  //privateֻ���ڱ����б�����
	  a.birth="2021";
}
}
