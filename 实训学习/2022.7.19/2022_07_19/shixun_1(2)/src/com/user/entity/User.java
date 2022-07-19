package com.user.entity;

public class User {
  private int id;
  private String uname;
  private String upwd;
  private int type;

  
  //创建无参数的额构造器
  public User() {
		super();
		// TODO Auto-generated constructor stub
	}
  //创建有参数的构造器
public User(int id, String uname, String upwd, int type) {
	super();
	this.id = id;
	this.uname = uname;
	this.upwd = upwd;
	this.type = type;
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


  
}
