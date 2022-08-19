package com.neu.person.controller;

import com.neu.person.biz.PersonBiz;
import com.neu.person.entity.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.sql.Date;

@Controller
@RequestMapping("person")
public class PersonController {
    @Autowired
    private PersonBiz personBiz;
    @RequestMapping(value="/upload")
    public String upload(int id, String name, int age, String address, int dept_id , Date time , MultipartFile file, HttpServletRequest request) throws IOException {
        if(!file.isEmpty()){
            //获取文件名:
            String fileName=file.getOriginalFilename();
            System.out.println(fileName);
            //获取img文件路径
            String path=request.getServletContext().getRealPath("/img");
            System.out.println("路径是"+path);
            File file1=new File(path,fileName);
            //将文件写入磁盘
            file.transferTo(file1);
            Person person=new Person(id,name,age,address,dept_id,time,fileName);
            personBiz.addPerson(person);
        }
        return "redirect:/person/success";
    }
    @RequestMapping(value="/success")
    @ResponseBody
    public String success(){
        return "上传成功";
    }

}
