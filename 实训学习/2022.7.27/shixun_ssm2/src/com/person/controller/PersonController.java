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
	public String findPerson(ModelMap map){
		//调用业务层的方法
		List<Person> list=personBiz.findPerson();
		//前端想要获取集合中的数据，那么要将集合存储到作用域中
		map.put("list",list);
		return "index.jsp";
		
	}
}
