package com.neu.zhaunxing;

public class Dog extends Animal{
  private String pinZhong;
  
  public void kanJia(){
	  System.out.println("���ü�");
  }
  
  public void jiao(){
	  System.out.println("������");
  }
  
  public static void main(String[] args) {
	  //����ת��
	  Animal a=new Dog();
	  //ֻ�ܵ��õ��Ǹ����е����Ժͷ���
	   a.id=1;
	   a.name="С��";
	   a.eat();
	    a.jiao();
}
}
