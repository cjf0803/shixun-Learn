--1.插入数据：
    --1.如果不指定具体的字段，那么要添加全部数据
       create table dossier(
           id number(4),
           name varchar2(10),
           age number(4),
           birth date
       )
      insert into dossier
      values(1,'张三',21,to_date('2022-7-15','yyyy-mm-dd')); 
      --查询数据
      select * from dossier;
    --2.如果不给表中有些字段添加值，那么可以指定字段添加数据
      insert into dossier(id,name,age)
      values(2,'李四',22) ;
    --3.添加null：
       --1.不给字段指定具体值，那么该字段就是null
       
       --2.直接给字段赋值null
      insert into dossier(id,name,age,birth)
      values(3,null,23,'13-7月-22');  
      
    --4.通过子查询创建表：如果where的条件不成立那么创建的是表结构
       create table emp1
       as
       select * from emp
       where 1=0; 
       
     --5.通过子查询创建表：如果where条件成立那么创建表同时将数据赋值到新表中
        create table emp2
       as
       select * from emp
       where 1=1;
       
     --5.通过子查询给指定字段添加数据
        select * from emp1 
        insert into emp1(empno,ename,sal,hiredate,deptno)
        select empno,ename,sal,hiredate,deptno
        from emp;
     --6.通过子查询给所有字段添加值
        insert int emp1
        select * from emp;     


--2.修改数据：
     --修改数据主要用来按照指定条件修改表中某些行的列数据
     --where限定要修改的行
     --set指定要修改的字段
     --把员工编号为7782的部门编号修改为20
       update emp set deptno=20
       where empno=7788;
     --修改7788的员工工资增加1000
       update emp set sal=sal+1000
       where empno=7788;
     --多列修改
        --修改7788的工资增加500，奖金增加500
       update emp set sal=sal+500,comm=comm+500
       where empno=7788;
--3.删除数据:
     --删除数据主要用来按照指定条件从表中删除某些行。
     --通过where删除指定行
      --删除职位是CLERK的员工记录
      delete from emp
      where job='CLERK' ;
      --指定范围删除
      delete from emp
      where sal between 1000 and 2000;
      
--4.事务管理：
    --事务就是保证数据的一致性。要么同时成功要么同时失败。
    --事务的四个特征：
       --1.原子性
       --2.一致性
       --3.隔离性
       --4.持久性
       
    --事务的组成：
        --从事务的开启到事务的结束这个过程组成一个事务
        --在什么情况下会开事务
           --insert   update  delete
        --在什么情况下结束事务 
           --事务由一组相关的DML或SELECT语句，加上一个TPL语句（COMMIT、ROLLBACK）
           --或一个DDL语句(CREATE、ALTER、DROP、TRUNCATE等)或一个DCL（GRANT、REVOKE）语句。
           
                   
         
        
        
        
        
        
        
        
        
              
      
         
