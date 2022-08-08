package com.person.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.person.biz.PersonBiz;
import com.person.dao.PersonDao;
import com.person.entity.Person;

@Service("personBiz")
public class PersonBizImpl implements PersonBiz{
	@Autowired
	   private PersonDao personDao;

	@Override
	public List<Person> findPerson(int index,int size) {
		//����map����������map������
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("index",index);
		map.put("size", size);
		List<Person> list= personDao.findPerson(map);
		return list;
	}

	@Override
	public void delPerson(int id) {
		personDao.delPerson(id);
		
	}

	@Override
	public int countPerson() {
		
		return personDao.countPerson();
	}

}
