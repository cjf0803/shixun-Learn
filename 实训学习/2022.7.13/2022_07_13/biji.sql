select upper('hello')
from dual;

select upper(ename)
from emp;

SELECT CONCAT(UPPER(lpad(ename,1)),LOWER(SUBSTR(ename,2,9))) 员工姓名 ,LENGTH(ename) as 姓名长度 from emp
WHERE lpad(ename,1) IN('J','A','M')
ORDER BY ename ASC;
--查询员工姓名中中包含大写或小写字母A的员工姓名。
SELECT ename FROM emp
WHERE instr(ename,'a')>0 OR instr(ename,'A')>0

--查询部门编号为10或20，入职日期在81年5月1日之后，并且姓名中包含大写字母A的员工姓名，员工姓名长度（提示，要求使用INSTR函数，不能使用like进行判断)

select ename,length(ename)
from emp
where deptno in(10,20) and hiredate>'1-5月-1981' and instr(ename,'A')>0
select * from emp


--查询每个职工的编号,姓名，工资
--要求将查询到的数据按照一定的格式合并成一个字符串.
--前10位：编号,不足部分用*填充,左对齐
--中间10位：姓名，不足部分用*填充,左对齐
--后10位：工资，不足部分用*填充,右对齐
select rpad(empno,10,'*')||rpad(ename,10,'*')||lpad(sal,10,'*')
from emp

select* from emp

select ename,sal,job,months_between(sysdate,hiredate) 月
from emp


select hiredate ,extract(day from hiredate)
from emp


--1.查询服务器当前时间
select sysdate
from dual;
--2.查询部门10,20的员工截止到2000年1月1日，工作了多少个月，入职的月份。(提示：使用months_between,extract)

select ename,months_between('1-1月-00'，hiredate),extract(month from hiredate) month
from emp
where deptno in (10,20)
--3.如果员工试用期6个月，查询职位不是MANAGER的员工姓名，入职日期，转正日期，入职日期后的第一个星期一,入职当月的最后一天日期。（提示：使用add_months,next_day,last_day)
select ename,hiredate 入职日期 ,add_months(hiredate,6) 转正日期,next_day(hiredate,'星期一') 入职日期后的第一个星期一， last_day(hiredate) 入职当月的最后一天日期
from emp
where job <>'MANAGER'

select to_char(hiredate,'yyyy') from emp
select to_char(hiredate,'mm') from emp
select to_char(hiredate,'day') from emp


--数值转换成字符
select to_char(sal,'$9,999')
from emp

select to_date('2022-10-10 14:10:10','yyyy-mm-dd hh24:mi:ss')
from emp

--1.显示服务器系统当前时间，格式为2007-10-12 17:11:11(提示：使用to_char函数)
select to_char(sysdate,'yyyy-mm-dd hh24:mi:ss')
from dual
--2.显示ename、hiredate 和 雇员开始工作日是星期几，列标签DAY(提示：使用to_char函数)
select ename,hiredate,to_char(hiredate,'Day') day 
from emp
--3.查询员工姓名，工资，格式化的工资（￥999,999.99） (提示：使用to_char函数)
select ename,sal,to_char(sal,'$9,999')
from emp
--4.把字符串2015-3月-18 13:13:13 转换成日期格式，并计算和系统当前时间间隔多少天。 (提示：使用to_date函数)
select round((sysdate-to_date('2015-03-18 13:13:13 ','yyyy-mm-dd hh24:mi:ss')),0) 
from dual

--1.查询每个部门的部门编号，部门名称，部门人数，最高工资，最低工资，工资总和，平均工资。
select e.deptno , d.dname ,count(e.empno),max(e.sal),min(e.sal),sum(e.sal) ,avg(e.sal)
from emp e,dept d
where e.deptno=d.deptno
group by e.deptno,d.dname
--2.查询每个部门，每个岗位的部门编号，部门名称，岗位名称，部门人数，最高工资，最低工资，工资总和，平均工资。
select e.deptno,e.job,d.dname,count(e.empno),max(e.sal),min(e.sal),sum(e.sal) ,avg(e.sal)
from emp e,dept d
where e.deptno=d.deptno
group by e.deptno,e.job,d.dname
