package com.person.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.person.entity.Person;
public interface PersonDao {
   public List<Person> findPerson(Map<String,Object> map);
   //����idɾ��
   public void delPerson(int id);
   //��ѯ�������еļ�¼��
   public int countPerson();
   //���Ա��
   public void addPerson(Person p);
}
