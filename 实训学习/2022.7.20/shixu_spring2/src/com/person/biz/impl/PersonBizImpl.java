package com.person.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.person.biz.PersonBiz;
import com.person.dao.PersonDao;
import com.person.entity.Person;
@Service("personBiz")
//让spring容器创建personBiz的代理对象（IOC):控制翻转，创建对象的主动权由程序员转换给了spring容器
public class PersonBizImpl implements PersonBiz{
	@Autowired  //依赖注入：将spring容器创建的代理对象动态组装到代码中(赋值过程)
      private PersonDao personDao;
	@Override
	public List<Person> findPerson() {
		List<Person> list=personDao.findPerson();
		return list;
	}

}
