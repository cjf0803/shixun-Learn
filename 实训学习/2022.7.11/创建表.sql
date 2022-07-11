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
     
     --3.日期类型    
    
    
    
    
