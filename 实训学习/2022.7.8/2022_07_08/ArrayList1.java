package com.gaoji.jihe;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ArrayList1 {
  public static void main(String[] args) {
	  List list=new ArrayList();
	  Person p1=new Person(1,"����",21);
	  Person p2=new Person(2,"����",22);
	  Person p3=new Person(3,"����",23);
	  //������洢��������
	  list.add(p1);
	  list.add(p2);
	  list.add(p3);
	  //ѭ������
	  Iterator it=list.iterator();
	  while(it.hasNext()){
		  Person person=(Person)it.next();
		  System.out.println(person.getName());
	  }
}
}
