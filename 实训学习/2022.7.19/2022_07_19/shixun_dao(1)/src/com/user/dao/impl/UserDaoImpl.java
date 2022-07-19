package com.user.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.user.dao.UserDao;
import com.user.entity.User;

public class UserDaoImpl implements UserDao{
	 //创建SqlSessionFactory的全局变量
      private SqlSessionFactory sessionFactory=null;
      //创建构造器给全局变量赋值
      public UserDaoImpl(SqlSessionFactory sessionFactory){
    	  this.sessionFactory=sessionFactory;
      }
	@Override
	public List<User> findUser() {
		//创建SqlSession
		SqlSession sqlSession=sessionFactory.openSession();
		//调用查询的方法
		List<User> list=sqlSession.selectList("user.findUser");
		return list;
	}

}
