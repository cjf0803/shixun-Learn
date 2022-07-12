--作业：
--1.查询部门在20或30的员工姓名，部门编号，并按照工资升序排序。
select ename,deptno,sal
from emp
where deptno in (20,30)
order by sal asc


--2.查询工资在2000-3000之间，部门不在10号的员工姓名，部门编号，工资，并按照部门升序，工资降序排序。
select ename ,deptno,sal
from emp
where sal between 2000 and 3000
and deptno<>10
order by deptno asc,sal desc

--3.查询入职日期在82年至83年之间，职位以SALES或者MAN开头的员工姓名，入职日期，职位，并按照入职日期降序排序。

select ename,hiredate,job
from emp
where hiredate between '1-1月-1982' and '31-12月-83' 
and job like 'SALES%' or job like 'MAN%'
order by hiredate desc
--4.查询入职时间在1982-7-9之后，并且不从事SALESMAN工作的员工姓名、入职时间、职位。
select ename,hiredate,job
from emp
where hiredate>'9-7月-1982' and job<>'SALESMAN'

--5.查询员工姓名的第三个字母是a的员工姓名。
select ename
from emp
where ename like '__A%'

--6.查询除了10、20号部门以外的员工姓名、部门编号。
select  ename,deptno
from emp
where deptno not in (10,20)

--7.查询部门号为30号员工的信息，先按工资降序排序，再按姓名升序排序。 

select *
from emp 
where deptno=30
order by sal desc,ename asc
--8.查询没有上级的员工(经理号为空)的员工姓名。

select ename
from emp
where mgr is null
--9.查询工资大于等于4500并且部门为10或者20的员工的姓名\工资、部门编号。
select ename,sal ,deptno
from  emp
where sal>=4500 and deptno in (10,20)
