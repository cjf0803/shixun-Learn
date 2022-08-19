package com.neu.user.biz;

import com.neu.user.entity.User;

public interface UserBiz {
    public User login(String uname, String upwd);
}
