package com.person.biz.impl;

import java.util.List;

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
	public List<Person> findPerson() {
		List<Person> list= personDao.findPerson();
		return list;
	}

}
