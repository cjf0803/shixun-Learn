package com.person.biz;

import java.util.List;

import com.person.entity.Person;

public interface PersonBiz {
	//����index����ǰҳ����sizeÿҳ��ʾ��������ҳ
 public List<Person> findPerson(int index,int size);
 public void delPerson(int id);
 //�����ܼ�¼��
 public int countPerson();
 

}
