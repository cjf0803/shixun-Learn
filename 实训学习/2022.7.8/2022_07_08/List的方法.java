package com.gaoji.jihe;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class List的方法 {
   public static void main(String[] args) {
	   List list=new ArrayList();
	   Person p1=new Person(1,"张三",21);
	   Person p2=new Person(2,"李四",22);
	  /* list.add(0,p2);
	   list.add(1,p1);
	   Iterator it=list.iterator();
	   while(it.hasNext()){
		     Person p=(Person)it.next();
		     System.out.println(p.getName());
	   }*/
	   
	   //通过索引返回对象
	      list.add(p1);
	      list.add(p2);
	     /* Person p=(Person)list.get(0);
	      System.out.println(p.getName());
	   //返回元素在集合中的索引
	      int index=list.indexOf(p1);
	      System.out.println("下标是:"+index);*/
	      
	      //通过下标替换元素的值
	     /* list.set(0,p2);
	     Person p3=(Person)list.get(0);
	     System.out.println("替换后:"+p3.getName());*/
	     
	     //通过下标移除元素：
	     list.remove(0);
	     Iterator it=list.iterator();
	     while(it.hasNext()){
	    	 Person p=(Person)it.next();
	    	 System.out.println(p.getName());
	     }
	   
	     //判断集合是否为空:不为空返回false
	      boolean bo=list.isEmpty();
	      System.out.println("是否为空:"+bo);
	      
	      //判断集合中是否包含元素.包含返回true
	     boolean bo1= list.contains(p2);
	     System.out.println("是否包含该元素:"+bo1);
}
}
