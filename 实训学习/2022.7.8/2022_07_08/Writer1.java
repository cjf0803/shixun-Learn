package com.gaoji.file;

import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

public class Writer1 {

	public static void main(String[] args) {
		  //���������
		Writer out=null;
		try {
			out=new FileWriter("d:/hello.txt");
			char[] c={'��','��','ѧ','ϰ','��','��','��','��'};
			//���ַ�����д���ļ���
			out.write(c);
			//��������
			out.flush();
			//�ͷ���Դ
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
