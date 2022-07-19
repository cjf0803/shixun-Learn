package com.user.dao;

import java.util.List;
import java.util.Map;

import com.user.entity.User;

public interface UserDao {
  public List<User> findUser();
  public List<User> findZu(Map<String,Object> map);
  //通过List查询in集合
  public List<User> findList(List<Integer> list);
  //通过Array循环in
  public List<User> findArray(int[] arr);
  //通过map查询
  public List<User> findMap(Map<String,Object> map);
  //sql片段查询
  public List<User> findQuery(Map<String,Object> map);
}
