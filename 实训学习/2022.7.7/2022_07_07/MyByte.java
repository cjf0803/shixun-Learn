package com.neu.exception.zidingyi;

public class MyByte {
   private byte b;
   public MyByte(byte b) throws MyException{
	   //���¸�b����һ��ȡֵ��Χ
	   if(b<-28||b>28){
		   //�׳��Զ�����쳣
		   throw new MyException("��ֵ������Mybyte�ķ�Χ");
	   }
	   this.b=b;
   }
   
   //ͨ��get����ȡ��������ֵ
   public byte getByte(){
	   return b;
   }
   
   public static void main(String[] args) {
	  try {
		MyByte by=new MyByte((byte)120);
		//��������
		System.out.println(by.getByte());
	} catch (MyException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
