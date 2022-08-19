package com.neu.person.mapper;

import com.neu.person.entity.Person;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PersonMapper {
    public void addPerson(Person person);
}
