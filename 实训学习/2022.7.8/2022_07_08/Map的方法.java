package com.gaoji.jihe;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class Map�ķ��� {
  public static void main(String[] args) {
	  //����map�ļ���
	  Map map=new HashMap();
	  Person p1=new Person(1,"����",21);
	  Person p2=new Person(2,"����",22);
	  Person p3=new Person(3,"����",23);
	  //������洢��������
	  map.put("p1",p1);
	  map.put("p2",p2);
	  map.put("p3",p3);
	  //ͨ������ȡֵ��
	 Person p=(Person) map.get("p1");
	 System.out.println(p.getName());
	   //�жϼ������Ƿ���ڼ�
	 boolean bo=map.containsKey("p1");
	 System.out.println("�Ƿ���ڼ�:"+bo);
	   //�ж��Ƿ����ֵ
	 boolean bo1=map.containsValue(p1);
	 System.out.println("�Ƿ����ֵ:"+bo1);
	   //�жϼ������Ƿ����Ԫ��,����false�ǰ���Ԫ��
	 boolean bo2=map.isEmpty();
	   System.out.println("�Ƿ����Ԫ��:"+bo2);
	   
	   //���ؼ����е�Ԫ������
	   int size=map.size();
	   System.out.println("�����е�Ԫ������:"+size);
	   //��ȡ���м��ļ���
	    Set set= map.keySet();
	    Iterator it=set.iterator();
	    while(it.hasNext()){
	    	//��ȡ���еļ�
	    	 String str=(String)it.next();
	    	 System.out.println("���еļ���:"+str);
	    }
	    
	    //��ȡ���е�ֵ:
	      for(Object obj:map.values()){
	    	  Person person=(Person)obj;
	    	  System.out.println("���е�ֵ:"+person.getName());
	      }
	      
	   //ͨ������ȡ���е�ֵ��
	       //1.��ȡ���еļ�:
	       Set set1= map.keySet();
	       Iterator it1=set1.iterator();
	       //ѭ�����еļ�
	       while(it1.hasNext()){
	    	   //ȡ����
	    	   String str=(String)it1.next();
	    	   //ͨ������ȡֵ
	    	   Person person=(Person)map.get(str);
	    	   System.out.println("ͨ����ȡֵ:"+person.getName());
	       }
	 
}
}
