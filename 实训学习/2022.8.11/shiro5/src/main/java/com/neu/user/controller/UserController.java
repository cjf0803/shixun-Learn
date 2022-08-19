package com.neu.user.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("user")
public class UserController {
    @RequestMapping(value = "/index")
    public String index(ModelMap map){
        map.put("msg","hello shiro");
        return "index";
    }
    @RequestMapping(value = "/add")
    public String add(){
        return "/user/add";
    }
    @RequestMapping(value="/update")
    public String update(){
        return "/user/update";
    }
    @RequestMapping(value="/toLogin")
    public String toLogin(){
        //去根目录的login
        return "login";
    }
    @RequestMapping(value = "/login")
    public String login(String username,String password,ModelMap map){
        //获取当前用户
        Subject su = SecurityUtils.getSubject();
        //封装用户的登录数据，在认证中要通过它获取封装的数据
        UsernamePasswordToken token=new UsernamePasswordToken(username,password);
        //执行登录的方法
        try{
            //如果用户名和密码输入正确,那么返回index
            su.login(token);
            return  "index";

        }catch (UnknownAccountException e){
            map.put("msg","用户名错误");
            return "login";
        }catch (IncorrectCredentialsException e){
            map.put("msg","密码错误");
            return "login";
        }
    }
    @RequestMapping(value = "/noauth")
    @ResponseBody
    public String noauth(){
        return "没有权限";
    }
}
