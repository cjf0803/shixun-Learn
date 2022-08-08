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
		//����ҵ���ķ���
		List<Person> list=personBiz.findPerson();
		//ǰ����Ҫ��ȡ�����е����ݣ���ôҪ�����ϴ洢����������
		map.put("list",list);
		return "index.jsp";
		
	}
}
