package com.neu.static1;

public class Person {
  private int id;
  private static String name;  //��̬�ĳ�Ա����
  private static int age;   //��̬�ĳ�Ա����
  
 /* 
  * static�������ι�����
  * public static Person(){
	  
  }*/
  
  public static void study(){
	  //��̬������ֻ�ܷ��ʾ�̬��Ա
	     name="����";
	      //id=1; //�Ǿ�̬��Ա���ܱ�����
	    //this.age=21; //��̬�����в���ʹ��this�ؼ���
	  System.out.println("�ú�ѧϰ");
  }
  
  public void work(){
	  System.out.println("Ŭ�������ú�׬Ǯ");
  }
  
  //��̬�����
  static{
	  System.out.println("����һ����̬�����");
  }
  
 public static void main(String[] args) {
	 /*//ͨ���������þ�̬�ĳ�Ա����
	  Person.age=21;
	  Person.name="����";
  //ͨ���������
	  Person p=new Person();
	  p.age=20;
	  p.name="����";*/
	  
	  
	  //������������п���ͨ�����������Ƕ������㷽����
	  Person.study();
	  Person p=new Person();
	  p.study();
	  //��̬���������ڱ�����ֱ�ӵ��ã��Ǿ�̬��������ֱ�Ӵ���
	 // work();
	   study();
}
}
