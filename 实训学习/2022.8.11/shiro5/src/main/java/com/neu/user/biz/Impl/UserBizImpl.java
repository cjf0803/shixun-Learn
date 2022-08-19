package com.neu.user.biz.Impl;

import com.neu.user.biz.UserBiz;
import com.neu.user.entity.User;
import com.neu.user.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userBiz")
public class UserBizImpl implements UserBiz {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User login(String uname, String upwd) {
        User user=userMapper.login(uname,upwd);
        return user;
    }
}
