package com.person.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.person.dao.PersonDao;
import com.person.entity.Person;

public class PersonDaoImpl extends SqlSessionDaoSupport implements PersonDao{

	@Override
	public List<Person> findPerson() {
		//创建SqlSession对象
		SqlSession sqlSession=this.getSqlSession();
		List<Person> list=sqlSession.selectList("findPerson");
		return list;
	}

}
