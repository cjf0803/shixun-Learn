package com.gaoji.jihe;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class Set1 {
  public static void main(String[] args) {
	  Set set=new HashSet();
	  /*Person p1=new Person(1,"张三",21);
	  Person p2=new Person(2,"李四",22);
	  set.add(p1);
	  set.add(p2);
	  Iterator it=set.iterator();
	  while(it.hasNext()){
		  Person p=(Person)it.next();
		  System.out.println(p.getName());
	  }*/
	  
	  set.add(1);
	  set.add(2);
	  set.add(1);
	  Iterator it=set.iterator();
	  while(it.hasNext()){
		   Integer in=(Integer)it.next();
		   System.out.println(in);
	  }
}
}
