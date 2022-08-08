package com.person.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
public class PersonController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		   ModelAndView av=new ModelAndView();
		   //�����ݴ洢��model�С���ͼ����ͨ������ȡֵ
		   av.addObject("hello","hello springmvc");
		   //ͨ����ͼ�����������ַ���������jsp�ļ�
		   av.setViewName("index.jsp");
		return av;
	}

}
