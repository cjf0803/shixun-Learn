package com.user.dao;

import java.util.List;
import java.util.Map;

import com.user.entity.User;

public interface UserDao {
  public List<User> findUser();
  public List<User> findZu(Map<String,Object> map);
  //ͨ��List��ѯin����
  public List<User> findList(List<Integer> list);
  //ͨ��Arrayѭ��in
  public List<User> findArray(int[] arr);
  //ͨ��map��ѯ
  public List<User> findMap(Map<String,Object> map);
  //sqlƬ�β�ѯ
  public List<User> findQuery(Map<String,Object> map);
}
