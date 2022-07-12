--1.default:创建表时付默认值
    create table stu1(
       id number(4),
       name varchar2(10),
       sex char(2) default '男'
    )
    -- 在没有给其他字段赋值的情况下是没有默认值的。
    --sex不需要赋值，采用默认值
    insert into stu1(id,name)
    values(1,'张三');
    --在oracle中insert,delete,update语句操作时要提交事务
    --查询数据
    select * from stu1;
    --添加数据时，覆盖当前记录的默认值
    insert into stu1(id,name,sex)
    values(2,'小红','女');
    
--2.数据类型:
     --1.字符类型
         --1.char:固定长度，默认值是1，最大长度是2000；
            --固定长度：sex char(4):男--》2个字节，还剩两个字节，剩下的字节系统不会释放掉。
            --容易造成空间浪费
         --2.varchar2:可变长度，默认长度是1，最大长度是4000。
            --可变长度：name varchar2(10):张三---》4个字节，还剩6个字节。系统会自动释放掉没有
            --占用的空间。不会造成资源浪费。
         --3.clob:可变长度，最大4g      
     --2.数值类型
           --number:既可以表示整形也可以表示小数
           --number(n):只能表示整数
           --number(p,s):表示小数。p表示的是整个位数的长度，s表示的是小数位数，(p-s)表示整数位数
              --1.s>0:表示小数，小数位数精确到s位。整个长度不能超过p位
              --2.s<0:表示的是整数，精确到小数点左边的s位，并四舍五入。整个位数<p+|s|位
              --3.p<s:只能表示小于1的小数，且从小数点右边开始的前s-p位必须是0.保留s位小数。
     --3.日期类型  
            --date:表示精确到年月日时分秒
            --timestamp:精确到毫秒
            
--3.创建表:
          create table dossier(
              id number(4),
              cname varchar2(10),
              birthday date,  --date日期是固定格式所以不需要指定长度
              weight number(5,2),
              country_code char(2) default '01'
             
          )  
          
-- 4.添加数据:  yyyy-mm-dd hh:mi:ss  yy格式，在oracle中是字符类型。所以要转换成日期类型
        insert into dossier(id,cname,birthday,weight)
        values(1,'张三',to_date('2022-7-12 14:18:20','yyyy-mm-dd hh24:mi:ss'),34.23);
--5.查询数据:
        select * from dossier; 
--6.通过子查询添加数据:
        create table emp1
        as
        select * from emp;
      --查询表emp1
      select * from emp1;  
      
--7.如果子查询中有表达式那么要给表达式起一个别名:
        create table emp2
        as
        select empno,ename,sal*12+nvl(comm,0) 年薪,deptno
        from emp;
       --查询表emp2
       select * from emp2; 
--8.查询其他用户的表:用户名.表名
        select * from system.book; 
             
                
                              
              
    
    
    
    
