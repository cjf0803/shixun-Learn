package com.user.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.user.dao.UserDao;
import com.user.entity.User;

public class UserDaoImpl implements UserDao{
	 //����SqlSessionFactory��ȫ�ֱ���
      private SqlSessionFactory sessionFactory=null;
      //������������ȫ�ֱ�����ֵ
      public UserDaoImpl(SqlSessionFactory sessionFactory){
    	  this.sessionFactory=sessionFactory;
      }
	@Override
	public List<User> findUser() {
		//����SqlSession
		SqlSession sqlSession=sessionFactory.openSession();
		//���ò�ѯ�ķ���
		List<User> list=sqlSession.selectList("user.findUser");
		return list;
	}

}
