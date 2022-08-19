package com.neu.user.mapper;

import com.neu.user.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;
@Mapper
public interface UserMapper {
    public List<User> findUser(Map<String,Object> map);

    public User findById(int id);
}
