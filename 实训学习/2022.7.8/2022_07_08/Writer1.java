package com.gaoji.file;

import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

public class Writer1 {

	public static void main(String[] args) {
		  //定义输出流
		Writer out=null;
		try {
			out=new FileWriter("d:/hello.txt");
			char[] c={'好','好','学','习','天','天','向','上'};
			//将字符数组写入文件中
			out.write(c);
			//清理缓冲区
			out.flush();
			//释放资源
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
