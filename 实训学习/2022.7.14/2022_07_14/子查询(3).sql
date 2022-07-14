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
                              
             
--7.多列子查询:
      --和子查询中多个列进行比较
      --多列子查询通常使用in
      
      --查询出和1981年入职的任意一个员工的部门和职位完全相同员工姓名、
      --部门、职位、入职日期,不包括1981年入职员工。
           --1.查询1981年入职员工的部门和职位
              select deptno,job
              from emp
              where to_char(hiredate,'yyyy')=1981 
           --2.主查询:
              select ename,deptno,job,hiredate
              from emp
              where (deptno,job) in(
                   select deptno,job
                   from emp
                   where to_char(hiredate,'yyyy')=1981   
              )
              and to_char(hiredate,'yyyy')<>'1981';
              
--8.子查询中如果有null，那么不能和not in连用。否则返回null
            select ename,mgr,empno
            from emp
            where empno not in(
               select mgr
               from emp
            );
   --查询比自己部门平均工资高的员工姓名，工资，部门编号，部门平均工资
       --1.查询每个部门的平均工资
         select deptno,avg(sal)
         from emp
         group by deptno;
       --2.主查询
         select e.ename,e.sal,d.avgsal
         from emp e,(
             select deptno,avg(sal) avgsal
             from emp
             group by deptno 
         ) d
         where e.deptno=d.deptno
         and e.sal>d.avgsal; 
         
 --9.rownum:伪列。在数据表并不存在，可以输出数据。并且这个数据是从1开始
     --rownum经常被用来作为分页
        select ename,job,hiredate,rownum
        from emp
        where rownum>2;        
     --rownum和order by:
        --如果他俩一起使用，rownum数据是先产生的，order by排序时最后执行
        --最后的结果会导致rownum产生的数据没按照顺序排列
        --如果一起出现，那么要让order by先于rownum执行。
        --查询工资最大的5位员工的信息
           select d.*,rownum
           from (
               select ename,sal,job,hiredate
               from emp
               order by sal desc
            ) d
            where rownum<=5;
            
          --多表:
             select d.*,rownum
           from (
               select e.ename,e.sal,e.job,e.hiredate,d.dname
               from emp e,dept d
               where e.deptno=d.deptno
               order by e.sal desc
            ) d
            where rownum<=5; 
            
--10.分页:
      --index:当前页，
      --size:每页显示的条数
      --(index-1)*size:上页的最后一条数据
      --index*size:当前页最后一条数据
      
      --如果没有order by使用两层子查询
       select d.* from
            (select empno,ename,sal,hiredate,rownum r
            from emp) d 
       where r>(index-1)*size and r<=index*size 
            --注意rownum的别名必须在子查询中才能生效。            
         
        select d.* from
            (select empno,ename,sal,hiredate,rownum r
            from emp) d 
       where r>(1-1)*4 and r<=1*4
           --index=1:第一页  2，第二页
           --size=4:每页显示4条数据
           
      --如果有order by,那么要将order by放在最里层，保证它是先执行
         select * from   
           (select d.*,rownum r from
             (select empno,ename,job,hiredate,sal
             from emp     
             order by sal) d )
         where r>5 and r<=10    
            
            
        
         
                     
            
                          
                       
       
       
       
       
             
