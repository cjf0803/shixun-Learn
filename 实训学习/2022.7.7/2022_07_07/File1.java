package com.neu.exception;

import java.io.File;
import java.io.IOException;

public class File1 {
    public static void createFile(File file) throws IOException{
    	  if(file.exists()){
    		  if(file.isFile()){
    			  System.out.println("��ȡ�ļ���·��:"+file.getPath());
    			  System.out.println("��ȡ�ļ��ľ���·��:"+file.getAbsolutePath());
    			  System.out.println("��ȡ�ļ���:"+file.getName());
    		  }else{
    			  System.out.println("�����ļ�");
    			  file.createNewFile();
    		  }
    	  }else{
    		  System.out.println("����һ��Ŀ¼");
    		  file.mkdir();
    		  
    	  }
    	  
    	
    }
    public static void main(String[] args) {
    	   File f=new File("d:/hello");
    	   //�����������ʱ�쳣���׳�����ô�ڷ���������ʱҪtry catch�����쳣
		    try {
				File1.createFile(f);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
