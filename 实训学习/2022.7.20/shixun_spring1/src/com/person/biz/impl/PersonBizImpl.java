package com.person.biz.impl;

import java.util.List;

import com.person.biz.PersonBiz;
import com.person.dao.PersonDao;
import com.person.entity.Person;

public class PersonBizImpl implements PersonBiz{
	 /*��ҵ�����Ҫ���ó־ò�����ݡ�����Ҫ����PersonDao�Ķ���
	  * ��ҵ����������־ò�Ķ�����spring�������Ĵ������
	  * �����ô�������ͨ��PersonDao��set��������������personDao��ֵ
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
