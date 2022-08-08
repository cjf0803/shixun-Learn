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
     </tr>
     </c:forEach>
  </table>
</body>
</html>