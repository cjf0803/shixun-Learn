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
                                 
                   
                          
        
              
    
    
    
    
    
    
    
    
    
    
