package com.neu.duotai;

public class DaYin {
      public void chanPrint(Print p){//�β�
    	  p.print();
      }
      
      public static void main(String[] args) {
		  DaYin da=new DaYin();
		  //��ӡ�ڰ�ֽ��
		  da.chanPrint(new HeiBaiPrint());//ʵ��
		  //��ӡ��ɫֽ��
		  da.chanPrint(new CaiSePrint());
		  
	}
}
