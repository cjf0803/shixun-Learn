package com.gaoji.file;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class InputStream2 {

	public static void main(String[] args) {
		InputStream input=null;
		try {
			input=new FileInputStream("d:/hello.txt");
			try {
				//����һ���ֽ�����,input.available()��ȡ�ļ��ĳ���
				byte[] b=new byte[input.available()];
				//��ȡ�ļ�
				input.read(b);
				//ѭ������
				for(int i=0;i<b.length;i++){
					System.out.print((char)b[i]+" ");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
