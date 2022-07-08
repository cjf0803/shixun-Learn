package com.gaoji.file;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class InputStream2 {

	public static void main(String[] args) {
		InputStream input=null;
		try {
			input=new FileInputStream("d:/hello.txt");
			try {
				//定义一个字节数组,input.available()获取文件的长度
				byte[] b=new byte[input.available()];
				//读取文件
				input.read(b);
				//循环数组
				for(int i=0;i<b.length;i++){
					System.out.print((char)b[i]+" ");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
