package com.gaoji.file;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;

public class �ļ��Ķ�ȡ {

	public static void main(String[] args) throws IOException {
		Reader reader=null;
		BufferedReader buReader=null;
		Writer out=null;
		BufferedWriter buWriter=null;
		
		try {
			//ͨ���ܵ�����ȡ�ļ�
			reader=new FileReader("d:/hello.txt");
			buReader=new BufferedReader(reader);
			//�ܵ�����ȡ�ļ��е�����
			String str= buReader.readLine();
			
			//���������
			out=new FileWriter("d:/hello1.txt");
			buWriter=new BufferedWriter(out);
			buWriter.write(str);
			//��������
			buWriter.flush();
			System.out.println("д��ɹ�");
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
