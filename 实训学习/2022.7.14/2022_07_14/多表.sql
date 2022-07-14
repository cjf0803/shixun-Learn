--1.多表连接:
    --连接是在多个表之间通过一定的连接条件，使表之间发生关联，进而能从多个表之间获取数据
--2.多表连接的条件:
   --1.在 WHERE子句中书写连接条件
   --2.如果在多个表中出现相同的列名，则需要使用表名作为来自该表的列名的前缀
   --3. N个表相连时，至少需要N－1个连接条件
   
--3.连接类型：
    --1.等值连接
    
    --2.非等值连接
    
    --3.外部连接
    
    --4.内部连接
    
--4.笛卡尔积：
    --1.第一个表中的所有行和第二个表中的所有行都发生连接
    --2.在没有关联条件的情况下产生的连接
    select  e.empno,e.ename,d.dname
    from emp e,dept d 
    
--5.等值连接：
    --两个表中通过字段相同的值产生的关联条件
    --查询员工姓名，部门编号，部门名称
    select e.ename,e.deptno,d.deptno,d.dname
    from emp e,dept d
    where e.deptno=d.deptno  
    --现在只想查询工作地点在NEW YORK的员工编号，姓名，部门编号，工作地点
    select e.empno,e.ename,d.deptno,d.loc
    from emp e,dept d
    where e.deptno=d.deptno
    and d.loc='NEW YORK' ;
    
--5.非等值连接：
    select * from salgrade;    
   --查询每个员工的姓名，工资，工资等级
     select e.ename,e.sal,s.grade
     from emp e,salgrade s
     where e.sal between s.losal and s.hisal;
   --查询每个员工的编号，姓名，工资，工资等级，所在工作城市，按照工资等级进行升序排序
     select e.empno,e.ename,e.sal,s.grade
     from emp e,dept d,salgrade s
     where e.deptno=d.deptno
     and e.sal between s.losal and s.hisal
     order by s.grade;
     
--6.外部连接:(+)
     --+对边的表时基准表，基准表中的数据全部显示，(+)一边的表跟基准匹配，匹配不上用null填充
       --查询所有雇员姓名，部门编号，部门名称，包括没有员工的部门也要显示出来
       --部门表为基准表，
       select e.ename,e.deptno,d.dname
       from emp e,dept d  
       where e.deptno(+)=d.deptno;
       
--7.自连接:
      --同一张表的连接
      --关联条件:员工的经理编号=经理的员工编号
      
      select * from emp
      --查询员工所属的经理名称
      select worker.ename,manager.ename
      from emp worker,emp manager
      where worker.mgr=manager.empno; 
      
--练习3：
      --1.查询所有工作在NEW YORK和CHICAGO的员工姓名，员工编号，以及他们的经理姓名，经理编号       
          select worker.eanme,worker.empno,manager.ename,manager.empno
          from emp worker ,emp manager,dept d
          where worker.mgr=manager.empno
          and worker.deptno=d.deptno
          and d.loc in('NEW YORK','CHICAGO');
      --2.第上一题的基础上，添加没有经理的员工King，并按照员工编号排序。
          select worker.eanme,worker.empno,manager.ename,manager.empno
          from emp worker ,emp manager,dept d
          where worker.mgr=manager.empno(+)
          and worker.deptno=d.deptno
          
      --3.查询所有员工编号，姓名，部门名称，包括没有部门的员工也要显示出来
          select e.empno,e.ename,d.dname
          from emp e,dept d
          where e.deptno=d.deptno(+) 
          
          
--7.交叉连接：cross join
    --会产生笛卡尔积
     select e.ename,e.deptno,d.deptno
     from emp e cross join dept d 
     
--8.自然连接：NATURAL JOIN
    --两个表中要有相同的字段，并且数据类型一样
    --等值连接
    --共同的字段不能使用表名作为前缀
    select e.ename,deptno,d.dname
    from emp e natural join dept d;
    
--9.using连接：
     --可以通过一个或者几个相同的字段作为连接条件
     select e.ename,d.dname
     from emp e join dept d using(deptno) 
     
--10.on子句：
     --可以通过on指定连接条件
     --其他过滤条件写在where子句中
     --on要和join一起使用
     select e.ename,e.deptno,d.deptno,d.dname
     from emp e join dept d
     on(e.deptno=d.deptno)
     where e.sal>2000; 
     
--11.on子句连接三张表：
     select w.empno,d.dname,m.ename
     from emp w
     join dept d
     on(w.deptno=d.deptno)
     join emp m
     on(w.mgr=m.empno); 
     
--12.左外连接：
     --是以左边表为基准表，基准的数据全部显示。右边表跟左边表匹配，匹配不上 用null填充。
     select e.ename,e.deptno,d.deptno,d.dname
     from emp e left outer join dept d
     on(e.deptno=d.deptno);
     
--13.左连接:
      --是以左边表为基准表，基准的数据全部显示。右边表跟左边表匹配，匹配不上 用null填充。     
       select e.ename,e.deptno,d.deptno,d.dname
     from emp e left  join dept d
     on(e.deptno=d.deptno); 
     
--14.右外链接
      --是以右边表为基准表，基准表中的数据全部显示。左表跟右表匹配，匹配不上用null填充
      select e.ename,e.deptno,d.deptno,d.dname
      from emp e right outer join dept d
      on(e.deptno=d.deptno); 
      
--15.右连接：
      --是以右边表为基准表，基准表中的数据全部显示。左表跟右表匹配，匹配不上用null填充                       
     select e.ename,e.deptno,d.deptno,d.dname
      from emp e right  join dept d
      on(e.deptno=d.deptno); 
      
--16.全外连接：
      --在等值连接的基础上，两个表中的数据全部显示。
      select e.empno,e.deptno,d.deptno,d.dname
      from emp e full outer join dept d
      on(e.deptno=d.deptno);      
     
     
     
     
     
     
     
     
     
     
     
     
       
                   
          
          
          
          
          
          
          
          
          
          
          
          
          
          
             
     
          
          
                   
    
             
