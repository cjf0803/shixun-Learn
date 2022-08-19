package com.neu.user.biz;

import com.neu.user.entity.User;

import java.util.List;

public interface UserBiz {
    public List<User> findUser(int index,int size);
    public User findById(int id);
}
