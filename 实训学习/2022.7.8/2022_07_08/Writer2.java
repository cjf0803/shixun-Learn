package com.gaoji.file;

import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

public class Writer2 {
	public static void main(String[] args) {
		  Writer out=null;
		  try {
			out=new FileWriter("d:/hello.txt");
			String str="�ú�ѧϰ";
			out.write(str);
			out.flush();
			System.out.println("д��ɹ�");
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
	}

}
