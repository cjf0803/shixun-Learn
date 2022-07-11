package com.gaoji.file.xuliehua;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.List;

public class �����л� {
  public static void main(String[] args) throws IOException, ClassNotFoundException {
	  FileInputStream input=null;
	  ObjectInputStream obj=null;
	  try {
		input=new FileInputStream("d:/hello.txt");
		obj=new ObjectInputStream(input);
		//�����ݶ�����
		List<Person> list=(ArrayList)obj.readObject();
		for(Person person:list){
			System.out.println(person.getName());
		}
	} catch (FileNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		obj.close();
		input.close();
	}
	  
}
}
