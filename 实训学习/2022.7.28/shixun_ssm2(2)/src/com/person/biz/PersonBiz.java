package com.person.biz;

import java.util.List;

import com.person.entity.Person;

public interface PersonBiz {
	//根据index（当前页）和size每页显示条数来分页
 public List<Person> findPerson(int index,int size);
 public void delPerson(int id);
 //计算总记录数
 public int countPerson();
 

}
