package com.neu.jiekou;

public interface UserDao extends Person,Worker{
   //�ӿ���ֻ�ܶ�����󷽷��;�̬����
	public static final String URT="localhost";
	//���󷽷�
	public void delUser(int id);
	
	
	/*//�ӿڲ��ܱ�ʵ����
	public static void main(String[] args) {
		  UserDao userDao=new UserDao(); 
	}*/
}
