package com.person.dao;

import java.util.List;
import java.util.Map;

import com.person.entity.Person;
public interface PersonDao {
   public List<Person> findPerson(Map<String,Object> map);
   //����idɾ��
   public void delPerson(int id);
   //��ѯ�������еļ�¼��
   public int countPerson();
}
