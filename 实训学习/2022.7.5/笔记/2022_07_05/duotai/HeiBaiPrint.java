package com.neu.duotai;

public class HeiBaiPrint extends Print{
	private String color="黑白";
	
    //重写父类中的方法
	public void print(){
		  System.out.println("打印的纸张颜色是:"+color);
	}

}
