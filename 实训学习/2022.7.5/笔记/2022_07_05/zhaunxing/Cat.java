package com.neu.zhaunxing;

public class Cat extends Animal{
	private String birh;
	
	public void daiLaoShui(){
		System.out.println("ϲ��׽����");
	}
	

	  public static void main(String[] args) {
		 // Cat c=(Cat)new Animal();
		    //����һ����ת��
		  Animal a=new Cat();
		     //������ǿ��ת��������
		  Cat c=(Cat)a;
		    c.name="Сè";//�����е�����
		    c.birh="2021";//����������
		    c.daiLaoShui();//�����еķ���
		    c.jiao();//�����еķ���
	}
}
