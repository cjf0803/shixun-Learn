package com.neu.exception;

import java.io.File;
import java.io.IOException;

public class Throws1 {
  public static void main(String[] args) throws IOException {
	   File file=new File("d:/");
	   file.createNewFile();
}
}
