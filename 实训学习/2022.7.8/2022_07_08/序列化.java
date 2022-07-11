package com.gaoji.file.xuliehua;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

public class ���л� {
	public static void main(String[] args) throws IOException {
		FileOutputStream out=null;
		 ObjectOutputStream obj=null;
		
		try {
			 //����һ���ֽ��� 
			 out=new FileOutputStream("d:/hello.txt");
			 obj=new ObjectOutputStream(out);
			 //��������
			 Person p1=new Person(1,"����",21);
			 Person p2=new Person(2,"����",22);
			 Person p3=new Person(3,"����",23);
			 //�������ϲ��������
			 List<Person> list=new ArrayList<Person>();
			 list.add(p1);
			 list.add(p2);
			 list.add(p3);
			 //������д���ļ���
			 obj.writeObject(list);
			 //���������
			 obj.flush();
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			obj.close();
			out.close();
		}
		
	}

}
