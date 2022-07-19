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
		//��ȡ����mybatis.xml�����ļ�
		try {
			Reader read=Resources.getResourceAsReader("config/mybatis.xml");
			//ͨ�������ļ�configration����SqlSessionFactory����
			SqlSessionFactory sessionFactory=new SqlSessionFactoryBuilder().build(read);
			//ͨ��SqlSessionFactory����SqlSession�Ķ���
			SqlSession session=sessionFactory.openSession();
			/*List<User> list=session.selectList("user.findUser");
			for(User user:list){
				System.out.println(user.getUname());
			}*/
			
			/*//����id��ѯ
			User user=new User();
			user.setId(5);
			User user1=session.selectOne("user.findById",user);
			System.out.println(user1.getUname());*/
			
			/*//����idɾ������
			int id=10;
			int count=session.delete("user.delUser",id);
			//�ύ����
			session.commit();
			if(count>0){
				System.out.println("ɾ���ɹ�");
			}else{
				System.out.println("ɾ��ʧ��");
			}*/
			/*
			//�������
			User user=new User(9,"����","123",2);
			int count= session.insert("user.addUser",user);
			//�ύ����
			session.commit();
			if(count>0){
				System.out.println("��ӳɹ�");
			}else{
				System.out.println("���ʧ��");
			}*/
			
			
			//�޸�����
			User user=new User(9,"����","1234",2);
			int count=session.update("user.updateUser",user);
			//�ύ����
			session.commit();
			if(count>0){
				System.out.println("�޸ĳɹ�");
			}else{
				System.out.println("�޸�ʧ��");
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
