package com.person.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.person.biz.PersonBiz;
import com.person.entity.Person;

public class Test {
  public static void main(String[] args) {
	   //加载applicationContext.xml配置文件
	  ApplicationContext ax=new ClassPathXmlApplicationContext("applicationContext.xml");
	    PersonBiz personBiz=(PersonBiz) ax.getBean("personBiz");
	    List<Person> list=personBiz.findPerson();
	    for(Person person:list){
	    	System.out.println("姓名:"+person.getName());
	    }
}
}
