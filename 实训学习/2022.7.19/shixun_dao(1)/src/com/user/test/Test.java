package com.user.test;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.user.dao.UserDao;
import com.user.dao.impl.UserDaoImpl;
import com.user.entity.User;

public class Test {
public static void main(String[] args) {
	  //��ȡ���������ļ�
	try {
		Reader reader=Resources.getResourceAsReader("config/mybatis.xml");
		//ʵ����session����
		SqlSessionFactory sessionFactory=new SqlSessionFactoryBuilder().build(reader);
		 UserDao userDao=new UserDaoImpl(sessionFactory);
		 List<User> list=userDao.findUser();
		 for(User user:list){
			 System.out.println(user.getUname());
		 }
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
