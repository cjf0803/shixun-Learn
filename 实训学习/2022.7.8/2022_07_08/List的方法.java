package com.gaoji.jihe;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class List�ķ��� {
   public static void main(String[] args) {
	   List list=new ArrayList();
	   Person p1=new Person(1,"����",21);
	   Person p2=new Person(2,"����",22);
	  /* list.add(0,p2);
	   list.add(1,p1);
	   Iterator it=list.iterator();
	   while(it.hasNext()){
		     Person p=(Person)it.next();
		     System.out.println(p.getName());
	   }*/
	   
	   //ͨ���������ض���
	      list.add(p1);
	      list.add(p2);
	     /* Person p=(Person)list.get(0);
	      System.out.println(p.getName());
	   //����Ԫ���ڼ����е�����
	      int index=list.indexOf(p1);
	      System.out.println("�±���:"+index);*/
	      
	      //ͨ���±��滻Ԫ�ص�ֵ
	     /* list.set(0,p2);
	     Person p3=(Person)list.get(0);
	     System.out.println("�滻��:"+p3.getName());*/
	     
	     //ͨ���±��Ƴ�Ԫ�أ�
	     list.remove(0);
	     Iterator it=list.iterator();
	     while(it.hasNext()){
	    	 Person p=(Person)it.next();
	    	 System.out.println(p.getName());
	     }
	   
	     //�жϼ����Ƿ�Ϊ��:��Ϊ�շ���false
	      boolean bo=list.isEmpty();
	      System.out.println("�Ƿ�Ϊ��:"+bo);
	      
	      //�жϼ������Ƿ����Ԫ��.��������true
	     boolean bo1= list.contains(p2);
	     System.out.println("�Ƿ������Ԫ��:"+bo1);
}
}
