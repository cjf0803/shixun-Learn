package com.gaoji.file;

import java.io.File;
import java.io.IOException;

public class File1 {
   public static void createFile(File file) throws IOException{
	    if(file.exists()){
	    	 if(file.isFile()){
	    		 System.out.println("获取文件路径:"+file.getPath());
	    		 System.out.println("获取文件的绝对路径:"+file.getAbsolutePath());
	    		 System.out.println("获取文件名:"+file.getName());
	    		 System.out.println("获取文件长度:"+file.length());
	    		 
	    	 }
	    }else{
	    	file.createNewFile();
	    	System.out.println("文件创建成功");
	    }
   }
   public static void main(String[] args) {
	   File f=new File("d:/hello.txt");
	  try {
		File1.createFile(f);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
