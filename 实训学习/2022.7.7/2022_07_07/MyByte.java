package com.neu.exception.zidingyi;

public class MyByte {
   private byte b;
   public MyByte(byte b) throws MyException{
	   //重新给b定义一个取值范围
	   if(b<-28||b>28){
		   //抛出自定义的异常
		   throw new MyException("数值超出了Mybyte的范围");
	   }
	   this.b=b;
   }
   
   //通过get方法取出变量的值
   public byte getByte(){
	   return b;
   }
   
   public static void main(String[] args) {
	  try {
		MyByte by=new MyByte((byte)120);
		//调用数据
		System.out.println(by.getByte());
	} catch (MyException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
