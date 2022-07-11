package com.gaoji.file;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

public class Reader2 {
  public static void main(String[] args) throws IOException {
	  Reader reader=null;
	  try {
		reader=new FileReader("d:/hello.txt");
		char[] c=new char[4];
		reader.read(c);
		for(int i=0;i<c.length;i++){
			System.out.print(c[i]+" ");
		}
	} catch (FileNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		reader.close();
	}
	  
}
}
