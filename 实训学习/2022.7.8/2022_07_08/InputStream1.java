package com.gaoji.file;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class InputStream1 {
  public static void main(String[] args) throws IOException {
	   InputStream input=null;
	    try {
			input=new FileInputStream("d:/hello.txt");
			//���ն�ȡ������
			int data;
			//����ȡ����-1��ʱ���û��������
			while((data=input.read())!=-1){
				System.out.print((char)data+" ");
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch blocksyso
			e.printStackTrace();
		}finally{
			//�ر���Դ
			 input.close(); 
		}
	    
}
}
