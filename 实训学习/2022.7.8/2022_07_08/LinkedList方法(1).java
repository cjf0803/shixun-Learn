package com.gaoji.jihe;

import java.util.Iterator;
import java.util.LinkedList;

public class LinkedList方法 {
 public static void main(String[] args) {
	  LinkedList list=new LinkedList();
	  Person p1=new Person(1,"张三",21);
	  Person p2=new Person(2,"李四",22);
	  Person p3=new Person(3,"王五",23);
	  list.addFirst(p1);
	  list.add(p2);
	  list.addLast(p3);
	 /* Iterator it=list.iterator();
	  while(it.hasNext()){
		  Person p=(Person)it.next();
		  System.out.println(p.getName());
	  }*/
	   //移除第一个元素
	     list.removeFirst();
	   //移除最后一个元素
	     list.removeLast();
	  //获取第一个元素:
	    Person p=(Person)list.getFirst();
	    System.out.println("第一元素:"+p.getName());
	  //获取最后一个元素
	    Person pr=(Person)list.getLast();
	    System.out.println("最后一个元素是:"+pr.getName());
	    
}
}
