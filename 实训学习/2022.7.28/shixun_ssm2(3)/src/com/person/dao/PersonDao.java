package com.person.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.person.entity.Person;
public interface PersonDao {
   public List<Person> findPerson(Map<String,Object> map);
   //根据id删除
   public void delPerson(int id);
   //查询表中所有的记录数
   public int countPerson();
   //添加员工
   public void addPerson(Person p);
}
