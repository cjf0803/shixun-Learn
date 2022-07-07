package com.neu.duotai;

public class DaYin {
      public void chanPrint(Print p){//形参
    	  p.print();
      }
      
      public static void main(String[] args) {
		  DaYin da=new DaYin();
		  //打印黑白纸张
		  da.chanPrint(new HeiBaiPrint());//实参
		  //打印彩色纸张
		  da.chanPrint(new CaiSePrint());
		  
	}
}
