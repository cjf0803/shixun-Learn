package com.neu.user.entity;

public class User {
    private int id;
    private String uname;
    private String upwd;
    private int type;
    private String perm;

    public User(int id, String uname, String upwd, int type, String perm) {
        this.id = id;
        this.uname = uname;
        this.upwd = upwd;
        this.type = type;
        this.perm = perm;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getPerm() {
        return perm;
    }

    public void setPerm(String perm) {
        this.perm = perm;
    }
}
