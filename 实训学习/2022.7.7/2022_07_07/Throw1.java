package com.neu.exception;

import java.io.File;
import java.io.IOException;

public class Throw1 {
    public static void createFile(String path) throws IOException{
    	File file=new File(path);
    	//�����쳣
    	try {
    		//�������ļ�
			file.createNewFile();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//�����׳�IO�쳣
			throw e;
			
		}
    }
    
    public static void main(String[] args) {
		   try {
			Throw1.createFile("d:/hello.txt");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
