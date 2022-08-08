<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
	开始演示模态框
</button>
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
      
      <!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加员工信息
				</h4>
			</div>
			<form action="/shixun_ssm2/person/addPerson.do" method="post">
			<div class="modal-body">
				 <p>编号:<input type="text" name="id"></p>
				 <p>姓名:<input type="text" name="name"></p>
				 <p>年龄:<input type="text" name="age"></p>
				 <p>地址:<input type="text" name="adress"></p>
				 <p>部门:<input type="text" name="dept_id"></p>
				 <p>时间:<input type="text" name="time"></p>
				 <p>路径:<input type="text" name="path"></p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="submit" class="btn btn-primary">
					提交更改
				</button>
			</div>
			</form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</body>
</html>