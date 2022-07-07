package com.neu.exception;

public class try1 {
 public static void main(String[] args) {
	  String colors[]={"red","green","blue"};
	  //‘通过try处理可能出现异常的代码
	  try{
		  for(int i=0;i<4;i++){
			  System.out.println(colors[i]);
		  }
	  }catch(ArrayIndexOutOfBoundsException e){
		  System.out.println("数组下标越界！");
	  }
}
}
