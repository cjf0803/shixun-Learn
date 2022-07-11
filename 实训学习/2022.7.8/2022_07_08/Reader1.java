package com.gaoji.file;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

public class Reader1 {

	public static void main(String[] args) throws IOException {
		  //´´½¨×Ö·ûÁ÷
		 Reader reader=null;
		 try {
			reader=new FileReader("d:/hello.txt");
			int data;
			while((data=reader.read())!=-1){
				System.out.print((char)data+" ");
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			  reader.close();
		}
		 

	}

}
