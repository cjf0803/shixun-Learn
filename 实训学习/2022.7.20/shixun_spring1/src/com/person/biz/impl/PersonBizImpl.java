package com.person.biz.impl;

import java.util.List;

import com.person.biz.PersonBiz;
import com.person.dao.PersonDao;
import com.person.entity.Person;

public class PersonBizImpl implements PersonBiz{
	 /*在业务层中要调用持久层的数据。所以要创建PersonDao的对象
	  * 在业务层中声明持久层的对象，让spring创建他的代理对象
	  * 创建好代理对象后，通过PersonDao的set方法将代理对象给personDao赋值
	  * */
	    private PersonDao personDao;

	@Override
	public List<Person> findPerson() {
		List<Person> list=personDao.findPerson();
		return list;
	}

	public void setPersonDao(PersonDao personDao) {
		this.personDao = personDao;
	}

	
}
