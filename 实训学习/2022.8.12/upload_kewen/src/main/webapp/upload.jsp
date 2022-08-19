<%--
  Created by IntelliJ IDEA.
  User: 陈锦房
  Date: 2022/8/12
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/person/upload" method="post" enctype="multipart/form-data">
    <p>编号: <input type="text" name="id"></p>
    <p>姓名: <input type="text" name="name"></p>
    <p>年龄: <input type="text" name="age"></p>
    <p>地址: <input type="text" name="address"></p>
    <p>部门: <input type="text" name="dept_id"></p>
    <p>时间: <input type="text" name="time"></p>
    <p>上传: <input type="file" name="file"></p>
    <p><input type="submit" value="提交"></p>
</form>
</body>
</html>
