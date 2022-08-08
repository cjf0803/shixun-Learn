package com.user.test;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		/*//���ýӿ��еķ���
		List<User> list=userDao.findUser();
		for(User user:list){
			System.out.println(user.getUname());
		}*/
		
		
		/*//��ϲ�ѯ
		Map<String,Object> map=new HashMap<String,Object>();
		//map.put("id",100);
		map.put("id",0);
		map.put("uname","����");
		List<User> list=userDao.findZu(map);
		for(User user:list){
			System.out.println(user.getId()+" "+user.getUname());
		}*/
		
		/*
		//�Ӽ���List�б�������
		List<Integer> list=new ArrayList<Integer>();
		list.add(1);
		list.add(2);
		list.add(3);
		list.add(5);
		//���ò�ѯ�ķ���
		List<User> list1=userDao.findList(list);
		for(User user:list1){
			System.out.println("���:"+user.getId()+" ����:"+user.getUname());
		}*/
		
		
		/*//������Array�л�ȡ����
		int[] arr={1,2,3,5};
		//���ò�ѯ�ķ���
		List<User> list=userDao.findArray(arr);
		for(User user:list){
			System.out.println("���:"+user.getId()+" ����:"+user.getUname());
		}*/
		
		/*//����map����
		Map<String,Object> map=new HashMap<String,Object>();
		int[] ids={2,3,4,5};
		String uname="a";
		map.put("ids",ids);
		map.put("uname",uname);
		List<User> list=userDao.findMap(map);
		for(User user:list){
			System.out.println("���:"+user.getId()+" ����:"+user.getUname());
		}
*/
		
		//sqlƬ��
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("id",1);
		map.put("uname","a");
		List<User> list=userDao.findQuery(map);
		for(User user:list){
			System.out.println("���:"+user.getId()+" ����:"+user.getUname());
		}
	}

}
