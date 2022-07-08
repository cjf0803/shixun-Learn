package com.gaoji.jihe;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class Map的方法 {
  public static void main(String[] args) {
	  //创建map的集合
	  Map map=new HashMap();
	  Person p1=new Person(1,"张三",21);
	  Person p2=new Person(2,"李四",22);
	  Person p3=new Person(3,"王五",23);
	  //将对象存储到集合中
	  map.put("p1",p1);
	  map.put("p2",p2);
	  map.put("p3",p3);
	  //通过键获取值：
	 Person p=(Person) map.get("p1");
	 System.out.println(p.getName());
	   //判断集合中是否存在键
	 boolean bo=map.containsKey("p1");
	 System.out.println("是否存在键:"+bo);
	   //判断是否存在值
	 boolean bo1=map.containsValue(p1);
	 System.out.println("是否存在值:"+bo1);
	   //判断集合中是否存在元素,返回false是包含元素
	 boolean bo2=map.isEmpty();
	   System.out.println("是否存在元素:"+bo2);
	   
	   //返回集合中的元素数量
	   int size=map.size();
	   System.out.println("集合中的元素数量:"+size);
	   //获取所有键的集合
	    Set set= map.keySet();
	    Iterator it=set.iterator();
	    while(it.hasNext()){
	    	//获取所有的键
	    	 String str=(String)it.next();
	    	 System.out.println("所有的键是:"+str);
	    }
	    
	    //获取所有的值:
	      for(Object obj:map.values()){
	    	  Person person=(Person)obj;
	    	  System.out.println("所有的值:"+person.getName());
	      }
	      
	   //通过键获取所有的值：
	       //1.获取所有的键:
	       Set set1= map.keySet();
	       Iterator it1=set1.iterator();
	       //循环所有的键
	       while(it1.hasNext()){
	    	   //取出键
	    	   String str=(String)it1.next();
	    	   //通过键获取值
	    	   Person person=(Person)map.get(str);
	    	   System.out.println("通过键取值:"+person.getName());
	       }
	 
}
}
