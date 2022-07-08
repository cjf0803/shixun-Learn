package com.gaoji.file;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class InputStream1 {
  public static void main(String[] args) throws IOException {
	   InputStream input=null;
	    try {
			input=new FileInputStream("d:/hello.txt");
			//接收读取的数据
			int data;
			//当读取等于-1的时候就没有数据了
			while((data=input.read())!=-1){
				System.out.print((char)data+" ");
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch blocksyso
			e.printStackTrace();
		}finally{
			//关闭资源
			 input.close(); 
		}
	    
}
}
