package com.neu.user.mapper;

import com.neu.user.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {
    public User login(@Param("uname")String uname,@Param("upwd")String upwd);
}
