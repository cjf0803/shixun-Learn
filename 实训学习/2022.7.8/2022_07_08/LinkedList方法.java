package com.gaoji.jihe;

import java.util.Iterator;
import java.util.LinkedList;

public class LinkedList���� {
 public static void main(String[] args) {
	  LinkedList list=new LinkedList();
	  Person p1=new Person(1,"����",21);
	  Person p2=new Person(2,"����",22);
	  Person p3=new Person(3,"����",23);
	  list.addFirst(p1);
	  list.add(p2);
	  list.addLast(p3);
	 /* Iterator it=list.iterator();
	  while(it.hasNext()){
		  Person p=(Person)it.next();
		  System.out.println(p.getName());
	  }*/
	   //�Ƴ���һ��Ԫ��
	     list.removeFirst();
	   //�Ƴ����һ��Ԫ��
	     list.removeLast();
	  //��ȡ��һ��Ԫ��:
	    Person p=(Person)list.getFirst();
	    System.out.println("��һԪ��:"+p.getName());
	  //��ȡ���һ��Ԫ��
	    Person pr=(Person)list.getLast();
	    System.out.println("���һ��Ԫ����:"+pr.getName());
	    
}
}
