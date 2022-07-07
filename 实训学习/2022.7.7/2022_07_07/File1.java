package com.neu.exception;

import java.io.File;
import java.io.IOException;

public class File1 {
    public static void createFile(File file) throws IOException{
    	  if(file.exists()){
    		  if(file.isFile()){
    			  System.out.println("获取文件的路径:"+file.getPath());
    			  System.out.println("获取文件的绝对路径:"+file.getAbsolutePath());
    			  System.out.println("获取文件名:"+file.getName());
    		  }else{
    			  System.out.println("创建文件");
    			  file.createNewFile();
    		  }
    	  }else{
    		  System.out.println("创建一个目录");
    		  file.mkdir();
    		  
    	  }
    	  
    	
    }
    public static void main(String[] args) {
    	   File f=new File("d:/hello");
    	   //如果创建方法时异常是抛出的那么在方法被调用时要try catch处理异常
		    try {
				File1.createFile(f);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
