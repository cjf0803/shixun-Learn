<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <table>
     <tr>
         <td>编号</td>
         <td>姓名</td>
         <td>年龄</td>
         <td>地址</td>
         <td>部门</td>
         <td>时间</td>
         <td>路径</td>
         <td>操作</td>
     </tr>
     
     <c:forEach items="${list}" var="p">
        <tr>
         <td>${p.id}</td>
         <td>${p.name}</td>
         <td>${p.age}</td>
         <td>${p.adress}</td>
         <td>${p.dept_id}</td>
         <td>${p.time}</td>
         <td>${p.path}</td>
         <td><a href="/shixun_ssm2/person/delPerson.do?id=${p.id}">删除</a></td>
     </tr>
     </c:forEach>
  </table>
  
      <div>
          <a href="/shixun_ssm2/person/findPerson.do?index=1">首页</a>
          <c:if test="${index>1}">
          <a href="/shixun_ssm2/person/findPerson.do?index=${index-1}">上页</a>
          </c:if>
          <c:if test="${index<totalPage}">
          <a href="/shixun_ssm2/person/findPerson.do?index=${index+1}">下页</a>
           </c:if>
          <a href="/shixun_ssm2/person/findPerson.do?index=${totalPage}">末页</a>
         
          <form action="/shixun_ssm2/person/findPerson.do" method="post">
            <input type="text" name="index" size="6">输入页数
            <input type="submit" value="提交">
          </form>
      </div>
</body>
</html>