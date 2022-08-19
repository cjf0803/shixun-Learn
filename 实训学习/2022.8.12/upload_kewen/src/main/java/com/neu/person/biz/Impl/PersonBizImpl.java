package com.neu.person.biz.Impl;

import com.neu.person.biz.PersonBiz;
import com.neu.person.entity.Person;
import com.neu.person.mapper.PersonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("personBiz")
public class PersonBizImpl implements PersonBiz {
    @Autowired
    private PersonMapper personMapper;
    @Override
    public void addPerson(Person person) {
        personMapper.addPerson(person);
    }
}
