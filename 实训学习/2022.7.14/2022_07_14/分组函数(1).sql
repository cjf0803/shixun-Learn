--1.分组函数：
    --1.5个聚合函数
        --1.max:求最大值
            select max(sal) 最高工资
            from emp; 
        --2.min:求最小值
            select min(sal)
            from emp;
        --3.sum:求和
             select sum(sal)
             from emp;
             select sal from emp;
               
        --4.avg:求平均值
              select avg(sal)
              from emp;
        --5.count:求总记录数
             --count统计的是行
            select count(*) 
            from emp;
--练习1：
     --1.1.查询部门20的员工，每个月的工资总和及平均工资。
           select sum(sal),avg(sal)
           from emp
           where deptno=20;
           
     --2.查询工作在CHICAGO的员工人数，最高工资及最低工资
           select max(e.sal),min(e.sal)
           from emp e,dept d
           where e.deptno=d.deptno
           and d.loc='CHICAGO';  
           
     --3.查询员工表中一共有几种岗位类型 
          select count(distinct(deptno))
          from emp;
          
--2.group by:分组子句
       --1.group by 分组的字段
        --查询每个部门的编号，平均工资 
          select deptno,avg(sal)
          from emp
          group by deptno; 
       --2.注意：在select列表中除了聚合函数，其他字段必须放在group by后面
          select deptno,job,sum(sal)
          from emp
          group by deptno;
          
       --3.注意：group by后面出现的字段并不是必须出现在select列表中
           select sum(sal)
           from emp
           group by deptno;    
       --4.多列分组函数：
           --查询每个部门每个岗位的工资总和    
           select deptno,sum(sal)
           from emp
           group by deptno,job; 
 --练习2：
      --1.查询每个部门的部门编号，部门名称，部门人数，最高工资，最低工资，工资总和，平均工资。
          select e.deptno,d.dname,count(e.empno),max(e.sal),min(e.sal),sum(e.sal),avg(e.sal)
          from emp e,dept d
          where e.deptno=d.deptno
          group by e.deptno,d.dname;
          
      --2.查询每个部门，每个岗位的部门编号，部门名称，岗位名称，部门人数，
      --最高工资，最低工资，工资总和，平均工资
          select d.dname, e.deptno,e.job,count(e.empno),max(e.sal)
          from emp e,dept d
          where e.deptno=d.deptno
          group by d.dname,e.deptno,e.job;   
          
--3.having:
      --分组函数不能再where中过滤。要在分组group by之后进行过滤
      --通过having过滤分组函数，只要是过滤5个聚合函数，那么必须用having
       --查询每个部门最高工资大于2900的部门编号，最高工资
          select deptno,max(sal)
          from emp
          group by deptno
          having max(sal)>2900
          
--4.sql的书写顺序：
       select   from   where group by  having  order by 
--5,sql的执行顺序:
       from where group by  having  select order by
       
--练习3：
    --1.查询部门人数大于2的部门编号，部门名称，部门人数
        select e.deptno,d.dname,count(e.empno)
        from emp e,dept d
        where e.deptno=d.deptno
        group by e.deptno,d.dname
        having count(e.empno)>2  
        
    --2.查询部门平均工资大于2000，且人数大于2的部门编号，部门名称，部门人数，
    --部门平均工资，并按照部门人数升序排序 
        select e.deptno,d.dname,count(e.empno) countno,avg(e.sal)
        from emp e,dept d
        where e.deptno=d.deptno
        group by e.deptno,d.dname
        having avg(e.sal)>2000
        and count(e.empno)>2 
        order by countno;
        
        --查询每个部门最大的平均薪水
         select max(avg(sal))
         from emp
         group by deptno;
               
       
                       
          
                  
      
                                               
            
            
        
