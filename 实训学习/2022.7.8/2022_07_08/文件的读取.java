package com.gaoji.file;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;

public class 文件的读取 {

	public static void main(String[] args) throws IOException {
		Reader reader=null;
		BufferedReader buReader=null;
		Writer out=null;
		BufferedWriter buWriter=null;
		
		try {
			//通过管道流读取文件
			reader=new FileReader("d:/hello.txt");
			buReader=new BufferedReader(reader);
			//管道流读取文件中的数据
			String str= buReader.readLine();
			
			//创建输出流
			out=new FileWriter("d:/hello1.txt");
			buWriter=new BufferedWriter(out);
			buWriter.write(str);
			//清理缓冲区
			buWriter.flush();
			System.out.println("写入成功");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			buWriter.close();
			out.close();
			buReader.close();
			reader.close();
		}

	}

}
