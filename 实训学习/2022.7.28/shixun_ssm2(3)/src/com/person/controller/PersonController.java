package com.person.controller;

import java.sql.Date;
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
		//����ҵ���ķ���
		List<Person> list=personBiz.findPerson(index,size);
		//�����ܼ�¼��
		int count=personBiz.countPerson();
		//������ҳ��
		int totalPage=count%size==0?count/size:count/size+1;
		//ǰ����Ҫ��ȡ�����е����ݣ���ôҪ�����ϴ洢����������
		map.put("list",list);
		map.put("index",index);
		map.put("totalPage",totalPage);
		return "index";
		
	}

@RequestMapping(value="delPerson.do")
public String delPerson(int id){//ͨ��url���ݵĲ���������ͨ�������еĲ���ֱ����
	personBiz.delPerson(id);
	//�������ض��򵽲�ѯ�ķ�����
	return "redirect:/person/findPerson.do";
	
}

@RequestMapping(value="/addPerson.do")
 //�����еĲ���ʹ�ö�̬�����󶨣�Ҫ�ͱ��е�name��ֵһ�¡����ܽ��ܱ��ύ������
public String addPerson(int id,String name,int age,String adress,int dept_id,Date time,String path){
	 Person p=new Person(id,name,age,adress,dept_id,time,path);
	 personBiz.addPerson(p);
	 return "redirect:/person/findPerson.do";
}













}
