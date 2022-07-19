--1.约束：constraint
        --是一种保证数据完整性的规则。约束设置在单个字段或者多个字段组合上，
        --写入这些字段的行数据必须要符合约束的规则
        --1.not null:非空约束:设置的字段不能为null
            drop table dossier;
            create table dossier(
               id number(4),
               name varchar2(10) not null,
               age number(4)
            )
            insert into dossier(id,age)
            values(1,21);
        
        --2.primary key:主键约束:唯一性，非空性
            --1.列级别添加主键阅书吧
             create table dossier(
                 id number(4) constraint dossier_id_pk primary key,
                 name varchar2(10),
                 age number(10)
             ) 
             insert into dossier(name,age)
             values('张三',21); 
             --.表级别添加约束
                create table dossier(
                 id number(4),
                 name varchar2(10),
                 age number(10),
                 constraint dossier_id_pk primary key(id) --表级别添加主键约束
             ) 
             
             
             select * from dossier;
        
        --3.unique:唯一性约束:
            --1.列级别的唯一性约束：
             create table dossier(
               id number(4),
               name varchar2(10) constraint dossier_name_uq unique,
               age number(4)
            )
            --2.表级别的约束  
            create table dossier(
               id number(4),
               name varchar2(10),
               age number(4),
               constraint dossier_name_uq unique(name)
            )
            
            insert into dossier(id,name,age)
            values(1,'张三',21);
            
             insert into dossier(id,name,age)
            values(2,'张三',22);
         
        --4.check:检查性约束:
           --将字段的值限制在某个区间范围内:
           drop table dossier;
           create table dossier(
             id number(4) constraint dossier_id_pk primary key,
             name varchar2(10),
             age number(10),constraint dossier_age_ck check(age between 20 and 30),
             sex varchar2(2)constraint dossier_sex_ck check(sex in('男','女'))
           )
           insert into dossier(id,name,age,sex)
           values(1,'张三',23,'er')   
        
        --5.foreign key:外建约束:
              --这是主表
              create table class1(
                cid number(4) primary key,
                cname varchar2(10)
              )
              insert into class1(cid,cname)
              values(1,'java');
              insert into class1(cid,cname)
              values(2,'php');
              --查询数据
              select * from class1;
              --这是从表
              create table student1(
                sid number(4) primary key,
                sname varchar2(10),
                sage number(4),
                cid number(4) constraint student1_cid_fk references class1(cid)
              )
              
              --表级别的约束
               create table class1(
                cid number(4) primary key,
                cname varchar2(10)
              )
              
               create table student1(
                sid number(4) primary key,
                sname varchar2(10),
                cid number(4),
                sage number(4),
                constraint student1_cid_fk foreign key(cid) references class1(cid)
                
              )
              
              --1.外建必须是主表中的主键
              --2.创建表时要先创建主表，在创建从表
              --3.从表中的外建值必须是主表中主键值
               insert into student1(sid,sname,sage,cid)
               values(1,'张三',21,1);
                insert into student1(sid,sname,sage,cid)
               values(2,'李四',22,2);
        
               --主表中主键没有这个值
               insert into student1(sid,sname,sage,cid)
               values(2,'李四',22,3);
               --3.如果从表中的外建引用了主表中主键的值，那么主表中被引用的主键值不能被删除
               delete from class1 where cid=1;
               --4.如果想要删除主表中被引用的数据那么必须要将从表引用的数据删除完
               --删除从表中cid是1的数据
               delete from student1 where cid=1;
               --删除主表中cid是1的数据
               delete from class1 where cid=1; 
               --4.先删除从表在删除主表
                 --删除从表
                 drop table student1;
                 --删除主表
                 drop table class1;
                 
                 
               
--2.不建立约束关系，只引用外建，实现多表查询                
               create table class1(
                cid number(4) primary key,
                cname varchar2(10)
              )
              insert into class1(cid,cname)
              values(1,'java');
              insert into class1(cid,cname)
              values(2,'php');
        
        
               create table student1(
                sid number(4) primary key,
                sname varchar2(10),
                sage number(4),
                cid number(4) 
              )
               insert into student1(sid,sname,sage,cid)
               values(1,'张三',21,1);
                insert into student1(sid,sname,sage,cid)
               values(2,'李四',22,2);
        
              --删除主表中cid=1的数据
              delete from student1 where cid=1;
              --多表连接：
              select s.sname,s.sage,s.cid,c.cid,c.cname
              from student1 s,class1 c
              where s.cid=c.cid;
        
        
        
        
        
        
        
        
        
         
