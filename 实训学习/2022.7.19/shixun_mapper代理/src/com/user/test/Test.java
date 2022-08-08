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
		//��ȡ�����ļ�
		Reader reader=Resources.getResourceAsReader("config/mybatis.xml");
		//����������
		SqlSessionFactory sessionFactory=new SqlSessionFactoryBuilder().build(reader);
		//����SqlSession
		SqlSession sqlSession=sessionFactory.openSession();
		//����UserDao�Ĵ������
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		//���ýӿ��еķ���
		List<User> list=userDao.findUser();
		for(User user:list){
			System.out.println(user.getUname());
		}

	}

}
