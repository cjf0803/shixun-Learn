package com.user.test;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.user.dao.UserDao;
import com.user.entity.User;

public class Test {

	public static void main(String[] args) throws IOException {
		//读取配置文件
		Reader reader=Resources.getResourceAsReader("config/mybatis.xml");
		//创建工厂类
		SqlSessionFactory sessionFactory=new SqlSessionFactoryBuilder().build(reader);
		//创建SqlSession
		SqlSession sqlSession=sessionFactory.openSession();
		//创建UserDao的代理对象
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		//调用接口中的方法
		List<User> list=userDao.findUser();
		for(User user:list){
			System.out.println(user.getUname());
		}

	}

}
