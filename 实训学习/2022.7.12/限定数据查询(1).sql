--1.限定数据查询：跟据where条件查询指定的记录行
--2. where 列明名  比较运算符  值
--3.比较运算符: >   >=  <  <=  <>
--4.比较的值:
    --1.比较字符类型
          select ename,sal,deptno
          from emp
          where ename ='SMITH';
          
         --查询姓名不是SMITH的员工
         select ename,sal,deptno
         from emp
         where ename<>'SMITH';      
          --一般情况下字符的比较实用=或者<>
         SElect * from emp;
    --2.比较数值类型
         select ename,sal,hiredate,deptno
         from emp
         where sal>3000;
    
    --3.比较日期类型
         select  ename,hiredate,sal
         from emp
         where hiredate>to_date('1981-11-17','yyyy-mm-dd');
         
         select ename,hiredate,sal
         from emp
         where hiredate <to_date('1981-11-17','yyyy-mm-dd');
         
--练习1：
     --1..查询职位为SALESMAN的员工编号、职位、入职日期。
         select empno,job,hiredate
         from emp
         where job='MANAGER'; 
         
     --2..查询1985年12月31日之前入职的员工姓名及入职日期。
         select ename,hiredate
         from emp
         where hiredate<to_date('1985-12-31','yyyy-mm-dd');
         
     --3.  查询部门编号不在10部门的员工姓名、部门编号。
         select ename,deptno
         from emp
         where deptno<>10;
         
--5.特殊比较运算符:
      --1.between  and:
         --比较的是两个相同数据类型之间的数据
         --1.字符类型
             select ename,hiredate,sal,deptno
             from emp
             where ename between 'CLARK' and 'SMITH';
         --2.数值类型
             select ename,sal,hiredate
             from emp
             where sal between 2300 and 3502; 
                --包含上限值和下限值
         --3.日期类型 
             select  ename,hiredate
             from emp
             where hiredate between to_date('1981-6-9','yyyy-mm-dd') and to_date('1982-1-23','yyyy-mm-dd');        
            
     --in：集合列表，判断要比较的值是否和集合中的任意一个相等。有相等的就会返回该数据
         --1.字符类型
             select ename,hiredate,sal
             from emp
             where ename in('SMITH','smith','KING','a'); 
         --2.数值类型
             select ename,hiredate,sal
             from emp
             where sal in(600,2700,3502,1);
         --3.日期类型  :oracle默认支持的日期类型是RR格式。DD-MON-RR     
             select ename,hiredate,sal
             from emp
             where hiredate in('9-6月-81','17-11月-81','23-1月-82');
             
--练习2：
         --1.查询入职日期在82年至85年的员工姓名，入职日期。
             select ename,hiredate
             from emp
             where hiredate between '01-1月-82' and '31-12月-85';
             
         --2.查询月薪在3000到5000的员工姓名，月薪
             select ename,hiredate
             from emp
             where sal between 3000 and 5000; 
             
         --3.查询部门编号为10或者20的员工姓名，部门编号。
             select ename,deptno
             from emp
             where deptno in(10,20);
             
         --4.查询经理编号为7902, 7566, 7788的员工姓名，经理编号。
             select ename,mgr
             from emp
             where mgr in(7902,7566,7788); 
             
     --like:模糊查询:
         --两个通配符：
           --1. _:代表任意一个字符
           --2.%：代表任意多个字符
             --查询姓名中第一个字母是S的员工信息
             select ename,sal,hiredate
             from emp
             where ename like 'S%';
             --查询第二个字母是M的员工信息。：第一个字母是任意都可以
             select ename,sal,hiredate 
             from emp
             where ename like '_M%';
             
             --查询最后一个字母是H的员工信息
             select ename,hiredate
             from emp
             where ename like '%H';
             
             --查询倒数第二个字母是T的员工信息
             select ename,hiredate
             from emp
             where ename like '%T_';
             
             --查询姓名中包含A的员工信息:
             select ename,hiredate
             from emp
             where ename like '%A%';
             
       --is null:判断值是null
             select ename,hiredate
             from emp
             where hiredate is null;
       --is not null:查询不是null的信息
             select ename,hiredate
             from emp
             where hiredate is not null; 
             
--练习3：
      --1.查询员工姓名以W开头的员工姓名
             select ename,hiredate
             from emp
             where ename like 'W%'; 
      --2.查询员工姓名倒数第2个字符为T的员工姓名
             select ename
             from emp
             where ename like '%T_';
             
      --3.查询奖金为空的员工姓名，奖金
             select ename,comm
             from emp
             where comm is null;   
             
             
 --6.逻辑运算符:
      --and:逻辑与，可以连接多个表达式，如果每个表达式都为true,那么整个表达式为true
           --薪资大于等于1100并且岗位是CLERK的。
           select ename,sal,job
           from emp
           where sal>=1100
           and job='CLERK';
      --or:逻辑或，可以连接多个表达式，如果有一个表达式为true,那么整个表达式为true
             select ename,sal,job
           from emp
           where sal>=30000  --是false
           or job='CLERK';  --是true.结果是true.返回的数据岗位都是CLERK;
      
      --not:逻辑非，用来对整个表达式取反 
           --应用场景：
              --1.not和between  and 连用
                 --查询工资不在2000和3000之间的员工信息
                select ename,sal,job
                from emp
                where sal not between 2000 and 3000;
              --2.not和in连用
                --查询岗位不是CLERK和研发部
                  select ename,sal,job
                  from emp
                  where job not in('CLERK','研发部');
              --3.not和like连用
                --查询开头字母不是S的员工信息
                  select ename,sal,hiredate
                  from emp
                  where ename not like 'S%';   
              
              --4.not和null连用   
                   --查询奖金不是null的员工信息
                   select ename,hiredate
                   from emp
                   where hiredate is not null; 
                   
--7.逻辑运算符的优先级
     --not   and or
        select ename,job,sal
        from emp
        where job='SALESMAN'
        or job='PRESIDENT'
        and sal>1500;
     --括号可以改变优先级
          select ename,job,sal
        from emp
        where (job='SALESMAN'
        or job='PRESIDENT')
        and sal>1500;  
        
 --练习4：
      --1.查询工资超过2000并且职位是MANAGER,或者职位是SALESMAN的员工姓名、职位、工资
          select ename,job,sal
          from emp
          where sal>2000
          and job='MANAGER'
          or job='SALESMAN' ;
      --2.查询工资超过2000并且职位是 MANAGER或SALESMAN的员工姓名、职位、工资。
          select ename,job,sal
          from emp
          where sal>2000
          and job in('MANAGER','SALESMAN');   
          
      --3.查询部门在10或者20，并且工资在3000到5000之间的员工姓名、部门、工资
          select ename,deptno,sal
          from emp
          where deptno in(10,20)
          and sal between 3000 and 5000;
          
      --4.查询入职日期在81年，并且职位不是SALES开头的员工姓名、入职日期、职位
          select ename,hiredate,job
          from emp
          where hiredate between '1-1月-81' and '31-1月-81'
          and job not like 'SALES%';
          
      --5.查询职位为SALESMAN或MANAGER，部门编号为10或者20，姓名包含A的员工姓名、职位、部门编号。
          select ename,job,deptno
          from emp
          where job in('SALESMAN','MANAGER') 
          and deptno in(10,20)
          and ename like '%A%'; 
          
 --8.order by:排序
       --升序排序：asc,默认排序是按照升序排序
       --降序排序:desc
          --1.单列排序
              --1.字符排序
                  select ename
                  from emp
                  order by ename;--如果不写排序属性那就是按照升序排序
              --2.数值排序
                  select ename,sal
                  from emp
                  order by sal desc;
                    --注意：如果按照降序排序,null排在最上面。如果按照升序排序null排在最下面
              --3.日期排序
                  select  ename,hiredate
                  from emp
                  order by hiredate asc;
          --2.多列排序
                  select ename,deptno,sal
                  from emp
                  order by deptno asc,sal desc;
                     --在第一个排序列的基础上对第二个字段排序
          --3.按照列别名排序":
                  select ename,sal*12 newsal
                  from emp
                  order by newsal desc;
                             
                     
                                 
                                   
                                 
                   
                          
        
              
    
    
    
    
    
    
    
    
    
    
