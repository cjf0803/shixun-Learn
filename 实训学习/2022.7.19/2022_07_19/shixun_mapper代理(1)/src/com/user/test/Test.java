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
		//读取配置文件
		Reader reader=Resources.getResourceAsReader("config/mybatis.xml");
		//创建工厂类
		SqlSessionFactory sessionFactory=new SqlSessionFactoryBuilder().build(reader);
		//创建SqlSession
		SqlSession sqlSession=sessionFactory.openSession();
		//创建UserDao的代理对象
		UserDao userDao=sqlSession.getMapper(UserDao.class);
		/*//调用接口中的方法
		List<User> list=userDao.findUser();
		for(User user:list){
			System.out.println(user.getUname());
		}*/
		
		
		/*//组合查询
		Map<String,Object> map=new HashMap<String,Object>();
		//map.put("id",100);
		map.put("id",0);
		map.put("uname","张三");
		List<User> list=userDao.findZu(map);
		for(User user:list){
			System.out.println(user.getId()+" "+user.getUname());
		}*/
		
		/*
		//从集合List中遍历数据
		List<Integer> list=new ArrayList<Integer>();
		list.add(1);
		list.add(2);
		list.add(3);
		list.add(5);
		//调用查询的方法
		List<User> list1=userDao.findList(list);
		for(User user:list1){
			System.out.println("编号:"+user.getId()+" 姓名:"+user.getUname());
		}*/
		
		
		/*//从数组Array中获取数据
		int[] arr={1,2,3,5};
		//调用查询的方法
		List<User> list=userDao.findArray(arr);
		for(User user:list){
			System.out.println("编号:"+user.getId()+" 姓名:"+user.getUname());
		}*/
		
		/*//根据map传参
		Map<String,Object> map=new HashMap<String,Object>();
		int[] ids={2,3,4,5};
		String uname="a";
		map.put("ids",ids);
		map.put("uname",uname);
		List<User> list=userDao.findMap(map);
		for(User user:list){
			System.out.println("编号:"+user.getId()+" 姓名:"+user.getUname());
		}
*/
		
		//sql片段
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("id",1);
		map.put("uname","a");
		List<User> list=userDao.findQuery(map);
		for(User user:list){
			System.out.println("编号:"+user.getId()+" 姓名:"+user.getUname());
		}
	}

}
