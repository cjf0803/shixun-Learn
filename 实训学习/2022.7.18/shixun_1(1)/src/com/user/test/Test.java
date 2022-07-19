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
			/*List<User> list=session.selectList("user.findUser");
			for(User user:list){
				System.out.println(user.getUname());
			}*/
			
			/*//根据id查询
			User user=new User();
			user.setId(5);
			User user1=session.selectOne("user.findById",user);
			System.out.println(user1.getUname());*/
			
			//根据id删除数据
			int id=10;
			int count=session.delete("user.delUser",id);
			//提交事务
			session.commit();
			if(count>0){
				System.out.println("删除成功");
			}else{
				System.out.println("删除失败");
			}
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
