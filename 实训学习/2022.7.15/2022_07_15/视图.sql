--1.视图：
    --1.是一个命名的查询，用于改变基表数据的显示，通过视图能简化查询；访问方式与表相同
--2.为什么使用视图:
    --1.限制其它用户对数据库表的访问,因为视图可以有选择性的显示数据库表的一部分
    --2.容易实现复杂的查询
    --3.对于相同的数据可以产生不同的视图
    
     --1.创建一个视图v_emp10，通过该视图只能查看10号部门的员工编号，员工姓名，职位
        create view v_emp10
        as
        select empno,ename,job
        from emp
        where deptno=10;
     --2.查询视图:
        select * from v_emp10; 
        
 --练习1：
    --1.创建一个视图，通过该视图可以查询到工资在2000-5000内并且姓名中包含有A的员工编号，姓名，工资。
       create view v_emp11
       as
       select empno,ename,sal
       from emp
       where sal between 2000 and 5000
       and ename like '%A%'; 
       --查询视图
       select * from v_emp11; 
       
 --3.使用别名创建视图:
       create view v_emp12
       as
       select empno 编号,ename 姓名,sal 工资
       from emp
       where deptno=90; 
       --查询视图
       select * from v_emp12;
 --4.创建一个复杂的视图
       --1.创建一个视图，通过该视图可以查看每个部门的名称，最低工资，最高工资，平均工资
       create view v_emp13
         (name,minsal,maxsal,avgsal)
       as
       select d.dname,min(e.sal),max(e.sal),avg(e.sal)
       from emp e,dept d
       where e.deptno=d.deptno
       group by d.dname
       
       --查询视图
       select * from v_emp13;
               
       
       
       
       
       
       
       
       
       
               
       
         
        
                  
