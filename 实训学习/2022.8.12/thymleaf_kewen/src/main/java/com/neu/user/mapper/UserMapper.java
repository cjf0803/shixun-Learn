package com.neu.user.mapper;

import com.neu.user.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;
@Mapper
public interface UserMapper {
    public List<User> findUser(Map<String,Object> map);

    public User findById(int id);
    public void updateUser(User user);
    //用户登陆
    public User login(@Param("uname") String uname , @Param("upwd") String upwd);
    public boolean deleteUser(int id);
}
