package com.person.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.person.biz.PersonBiz;
import com.person.entity.Person;

@Controller
@RequestMapping("person")
public class PersonController {
	@Autowired
	  private PersonBiz personBiz;
@RequestMapping(value="findPerson.do")
	public String findPerson(ModelMap map,Integer index){
	     if(index==null){
	    	 index=1;
	     }
	     int size=5;
		//调用业务层的方法
		List<Person> list=personBiz.findPerson(index,size);
		//计算总记录数
		int count=personBiz.countPerson();
		//计算总页数
		int totalPage=count%size==0?count/size:count/size+1;
		//前端想要获取集合中的数据，那么要将集合存储到作用域中
		map.put("list",list);
		map.put("index",index);
		map.put("totalPage",totalPage);
		return "index";
		
	}

@RequestMapping(value="delPerson.do")
public String delPerson(int id){//通过url传递的参数，可以通过方法中的参数直接收
	personBiz.delPerson(id);
	//将数据重定向到查询的方法中
	return "redirect:/person/findPerson.do";
	
}
}
