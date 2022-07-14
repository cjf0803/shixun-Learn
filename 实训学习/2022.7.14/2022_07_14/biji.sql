--1.查询部门人数大于2的部门编号，部门名称，部门人数。
select count(e.empno) ,e.deptno,d.dname
from emp e,dept d
where e.deptno=d.deptno
group by e.deptno,d.dname
having count(e.empno)>2
--2.查询部门平均工资大于2000，且人数大于2的部门编号，部门名称，部门人数，部门平均工资，并按照部门人数升序排序。
select e.deptno,d.dname ,count(e.empno),avg(e.sal)
from emp e, dept d
where e.deptno=d.deptno
group by e.deptno,d.dname 
having avg(e.sal)>2000 and count(e.empno)>2
order by count(e.empno)


--1.写一个查询，显示所有员工姓名，部门编号，部门名称。
select e.ename,d.deptno,d.dname
from emp e,dept d
where e.deptno=d.deptno
--2.写一个查询，显示所有工作在CHICAGO并且奖金不为空的员工姓名，工作地点，奖金
select e.ename,d.loc,e.comm
from emp e, dept d
where e.deptno=d.deptno
and d.loc='CHICAGO' and e.comm is not null
group by e.ename

--3.写一个查询，显示所有姓名中含有A字符的员工姓名，工作地点。
select e.ename,d.loc
from emp e, dept d
where e.deptno=d.deptno
and instr(e.ename,'A')>0

--1.查询所有工作在NEW YORK和CHICAGO的员工姓名，员工编号，以及他们的经理姓名，经理编号。

select e.ename,e.empno,m.ename,m.empno
from emp e,emp m,dept d
where e.mgr=m.empno and  e.deptno=d.deptno and d.loc in('NEW YORK','CHICAGO');


--2.第上一题的基础上，添加没有经理的员工King，并按照员工编号排序。
select e.ename,e.empno,m.ename,m.empno
from dept d
join emp e
on e.deptno=d.deptno 
left outer join emp m
on e.mgr=m.empno
where d.loc in('NEW YORK','CHICAGO') ;
order by e.empno


--分页
select d.* 
from (
     select empno,ename,sal,hiredate,rownum r
     from emp 
)d
 where r>(2-1)*4 and r<=2*4
 
 
--如果有order by, 那么要将order by 放在最里层 ，保证他是先执行
 select * from   
           (select d.*,rownum r from
             (select empno,ename,job,hiredate,sal
             from emp     
             order by sal) d )
         where r>5 and r<=10    
