package com.gaoji.file.xuliehua;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

public class 序列化 {
	public static void main(String[] args) throws IOException {
		FileOutputStream out=null;
		 ObjectOutputStream obj=null;
		
		try {
			 //创建一个字节流 
			 out=new FileOutputStream("d:/hello.txt");
			 obj=new ObjectOutputStream(out);
			 //创建对象
			 Person p1=new Person(1,"张三",21);
			 Person p2=new Person(2,"李四",22);
			 Person p3=new Person(3,"王五",23);
			 //创建集合并添加数据
			 List<Person> list=new ArrayList<Person>();
			 list.add(p1);
			 list.add(p2);
			 list.add(p3);
			 //将集合写入文件中
			 obj.writeObject(list);
			 //清楚缓冲区
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
