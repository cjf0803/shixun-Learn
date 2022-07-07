package com.neu.duotai;

public class CaiSePrint extends Print{
	private String color="彩色";
	
	//重写父类中的方法
	public void print(){
		System.out.println("打印的纸张颜色是:"+color);
	}

}
