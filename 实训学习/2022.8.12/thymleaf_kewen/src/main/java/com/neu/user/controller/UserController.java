package com.neu.user.controller;

import com.neu.user.biz.UserBiz;
import com.neu.user.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserBiz userBiz;
    @RequestMapping(value = "/findUser")
    public String findUser(Integer index, ModelMap map){
        if (index==null){
            index=1;
        }
        int size=4;
        List<User> list=userBiz.findUser(index,size);
        map.put("list",list);
        return "findUser";
    }
    @RequestMapping(value = "/findById")
    public String findById(int id,ModelMap map){
        User user=userBiz.findById(id);
        map.put("user",user);
        return "update";
    }
    @RequestMapping(value="/update")
    public String update(int id,String uname,String upwd,int type){
        User user=new User(id,uname,upwd,type);
        userBiz.updateUser(user);
        return "redirect:/user/findUser";
    }
    @RequestMapping(value="/login")
    @ResponseBody
    public User login(String uname, String upwd){
        User user=userBiz.login(uname, upwd);
        return user;
    }
    @RequestMapping(value = "/deleteUser")
    public String  deleteUser(int id){
        boolean b=userBiz.deleteUser(id);
        System.out.println(b);
        return "redirect:/user/findUser";
    }
}
