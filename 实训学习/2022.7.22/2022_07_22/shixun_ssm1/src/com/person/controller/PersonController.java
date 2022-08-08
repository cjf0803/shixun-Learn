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
		   //将数据存储到model中。视图可以通过键获取值
		   av.addObject("hello","hello springmvc");
		   //通过视图解析器，将字符串解析成jsp文件
		   av.setViewName("index.jsp");
		return av;
	}

}
