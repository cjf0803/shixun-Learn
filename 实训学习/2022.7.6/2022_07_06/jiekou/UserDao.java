package com.neu.jiekou;

public interface UserDao extends Person,Worker{
   //接口中只能定义抽象方法和静态常量
	public static final String URT="localhost";
	//抽象方法
	public void delUser(int id);
	
	
	/*//接口不能被实例化
	public static void main(String[] args) {
		  UserDao userDao=new UserDao(); 
	}*/
}
