package com.neu.exception;

public class try1 {
 public static void main(String[] args) {
	  String colors[]={"red","green","blue"};
	  //��ͨ��try������ܳ����쳣�Ĵ���
	  try{
		  for(int i=0;i<4;i++){
			  System.out.println(colors[i]);
		  }
	  }catch(ArrayIndexOutOfBoundsException e){
		  System.out.println("�����±�Խ�磡");
	  }
}
}
