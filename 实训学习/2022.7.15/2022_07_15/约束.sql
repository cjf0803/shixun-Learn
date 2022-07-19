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
        
        --4.check:检查性约束:
        
        --5.foreign key:外建约束:
        
        
         
