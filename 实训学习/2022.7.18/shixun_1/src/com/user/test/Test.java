package com.user.test;
import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.user.entity.User;
public class Test {

	public static void main(String[] args) {
		//读取配置mybatis.xml配置文件
		try {
			Reader read=Resources.getResourceAsReader("config/mybatis.xml");
			//通过配置文件configration构造SqlSessionFactory对象
			SqlSessionFactory sessionFactory=new SqlSessionFactoryBuilder().build(read);
			//通过SqlSessionFactory构造SqlSession的对象
			SqlSession session=sessionFactory.openSession();
			List<User> list=session.selectList("user.findUser");
			for(User user:list){
				System.out.println(user.getUname());
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
