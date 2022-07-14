--1.子查询：
    --括号内的查询叫子查询，也叫内部查询，先于主查询执行
    --子查询的结果被主查询使用
    --子查询包含的运算符
      --1.单行运算符 =  >  >=  <  <=  <>
      --2.多行运算符 in  any all
--2.子查询书写在哪些地方
     --where子句后面：  where sal>(子查询)
     --having子句的后面:  having max(sal)>(子查询)
     --from子句后面: from (子查询)
   --查询出比JONES为雇员工资高的其他雇员
       --查询JONES的工资是多少
       select sal
       from emp
       where ename='JONES'; 
       --编写主查询
       select ename,sal,hiredate
       from emp
       where sal>(
          select sal
         from emp
         where ename='JONES'
       ); 
--3.子查询的使用:
      --1.子查询要用括号括起来
      --2.将子查询放在比较运算符的右边
      --3.对于单行子查询使用单行运算符
      --4.对于多行子查询使用多行运算符
      
     --显示和雇员7369从事相同工作并且工资大于雇员7876的雇员的姓名和工作
       --1.查询7369的工作岗位
         select job
         from emp
         where empno=7369
       --2.查询7876的员工工资
         select sal
         from emp
         where empno=7876
         
       --3.编写主查询
          select ename,job,sal
          from emp
          where job=(
            select job
         from emp
         where empno=7369
          )
          and sal>(
              select sal
         from emp
         where empno=7876
          ) 
          
      --查询工资最低的员工姓名，岗位及工资
          --1.查询最低工资
          select min(sal)
          from emp
          --2.编写主查询
          select ename,job,sal
          from emp
          where sal=(
             select min(sal)
             from emp
          ) 
          
       --查询部门最低工资比20部门最低工资高的部门编号及最低工资
          --1.查询20部门的最低工资
          select min(sal)
          from emp
          where deptno=20
          
          --2.编写主查询：
          select deptno,min(sal)
          from emp
          group by deptno
          having min(sal)>(
             select min(sal)
             from emp
             where deptno=20
          )
       --查询哪个部门的员工人数 高于各部门平均人数。
          --1.查询各部门的平均人数
          select avg(count(empno))
          from emp
          group by deptno;
          
          --2.编写主查询：
          select deptno,count(empno)
          from emp
          group by deptno
          having count(empno)>(
              select avg(count(empno))
              from emp
              group by deptno
          ) 
          
 --4.错误语法:
       select min(sal)
       from emp
       group by deptno;
       --但是主查询：
       select
       from where sal=;
       --=是单行运算符，但是子查询返回的是多条数据。要将=换成多行运算符
       select ename,sal
       from emp
       where sal in(select min(sal)
             from emp
             group by deptno) 
             
--练习1：
    --1.查询工资比SMITH工资高并且工作地点在CHICAGO的员工姓名，工资，部门名称
        --1.查询SMITH的工资是多少
        select sal
        from emp
        where ename='SMITH' ;
        --主查询
        select ename,sal,d.dname
        from emp e,dept d
        where e.deptno=d.deptno
        and d.loc='CHICAGO' 
        and sal>(
            select sal
            from emp
            where ename='SMITH'
        )
        
        --2.查询入职日期比20部门入职日期最早的员工还要早的员工姓名，入职日期
        --1.查询20部门的最早的入职日期
            select min(hiredate)
            from emp
            where deptno=20;
            
         --2.主查询
            select ename,hiredate
            from emp
            where hiredate<(
              select min(hiredate)
              from emp
              where deptno=20 
            ) 
            
         --3.查询部门人数大于所有部门平均人数的的部门编号，部门名称，部门人数
           --1.查询各部门的平均人数
              select  avg(count(empno))
              from emp
              group by deptno
              
            --2.主查询
              select e.deptno,d.dname,count(e.empno)
              from emp e,dept d
              where e.deptno=d.deptno
              group by e.deptno,d.dname
              having count(empno)>(
                 select  avg(count(empno))
                 from emp
                 group by deptno
              )  
              
--4.多行子查询:
       --返回的结果是多条记录
         --查询是经理的员工姓名，工资
          --1.查询经理编号:
           select mgr
           from emp;
          --2.编写主查询:
            select ename,sal
            from emp
            where empno in(
               select mgr
               from emp
            ); 
            
--5.多行子查询：any
   --1.<any:小于子查询结果中的任意一个
      
       --查询部门编号不为10，且工资比10部门任意一名工资低的员工编号，姓名，职位，工资。
         --1.查询10部门的员工工资
           select sal
           from emp
           where deptno=10;
         --2.主查询：  
            select empno,ename,job,sal
            from emp
            where sal<any(
                select sal
                from emp
                where deptno=10
            )
            and deptno<>10;
   
   --2.>any:大于子查询结果中的任意一个
         --查询部门编号不为10，且工资比10部门任意一名员工工资高的员工编号，姓名，职位，工资。
         --1.查询10部门的员工工资
             select sal
             from emp
             where deptno=10;
           --2.主查询
              select empno,ename,job,sal
              from emp
              where sal >any(
                select sal
                from emp
                where deptno=10
              ) 
              and deptno<>10;
   --3.=any:等于子查询结果中的任意一个(in) 
   
   
--6.多行子查询:all
    --1.<all:小于子查询中所有的数据
        --1.查询部门编号不为10，且工资比10部门所有员工工资高的员工编号，姓名，职位，工资
        
    --2.>all:大于子查询中所有的数据
        --1.查询部门编号不为10，且工资比10部门所有员工工资低的员工编号，姓名，职位，工资
         
    
    --3.=all:等于子查询中所有的数据 
        --1.查询部门编号不为10，且工资和10部门所有员工工资相等的员工编号，姓名，职位，工资                             
                              
             
       
       
       
       
       
             
