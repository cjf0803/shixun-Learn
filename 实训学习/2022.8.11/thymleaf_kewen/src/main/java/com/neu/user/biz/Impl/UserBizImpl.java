package com.neu.user.biz.Impl;

import com.neu.user.biz.UserBiz;
import com.neu.user.entity.User;
import com.neu.user.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("userBiz")
public class UserBizImpl implements UserBiz {
    @Autowired
    private UserMapper userMapper;
    @Override
    public List<User> findUser(int index, int size) {
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("index",index);
        map.put("size",size);
        List<User> list= userMapper.findUser(map);

        return list;
    }

    @Override
    public User findById(int id) {
        return userMapper.findById(id);
    }
}
