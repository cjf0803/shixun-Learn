package com.neu.person.entity;

import java.sql.Date;

public class Person {
    private int id;
    private String name;
    private int age;
    private String address;
    private int dept_id;
    private Date time;
    private String path;

    public Person() {
    }

    public Person(int id, String name, int age, String address, int dept_id, Date time, String path) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.address = address;
        this.dept_id = dept_id;
        this.time = time;
        this.path = path;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
}
