package com.neu.exception;

public class Finally1 {
  public static void main(String[] args) {
	  String colors[]={"red","green","blue"};
	  try{
		  for(int i=0;i<4;i++){
			  System.out.println(colors[i]);
			//break;
		  }
	  }catch(ArrayIndexOutOfBoundsException e){
		  System.out.println("�����±�Խ��");
		  //return;
		  System.exit(0);//ǿ���˳�����
	  }finally{
		  System.out.println("��Ҫִ��");
	  }
}
}
