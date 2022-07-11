--1.解锁scott的账号
     alter user scott account unlock;    
--2.scott的密码是tiger 

--3.修改密码:
      alter user scott identified by tiger;
--4.了解oracle的结构：
      -- 表空间----》用户----》数据库的对象
--5.users默认表空间
     --当创建数据库服务的时候，就创建了users这个表空间。如果创建
     -- 用户不指定表空间那么该用户存储在默认表空间下面。
     --如果创建用户并指定了表空间，那么该用户存储在指定的表空间下面
     
--6.创建自定义的默认表空间： 
       create tablespace test3
       datafile 'D:\oracle1\test1.dbf'
       size 200m
       autoextend on next 100m
       maxsize unlimited ;  
       
 --7.创建临时表空间：
       create temporary tablespace test4
       tempfile 'D:\oracle1\test4.dbf' 
       size 200m
       autoextend on next 100m
       maxsize 400m;  
       
 --8.创建用户并指定默认表空间和临时表空间：
        --只有拥有dba权限的用户才能创建新用户。新创建的用户没有任何操作权限。
        --只有授予相关权限才能有权限范围内的才做。
       create user haha 
       identified by ok
       default tablespace test3
       temporary tablespace test4 quota unlimited on test3; 
       --quota unlimited on test3; 通过自定义的默认表空间test3给用户haha分配内存。
       
--9.给haha用户授予登录的权限:
       grant create session to haha;
          -- create session是登录权限
          
--10.创建表:
       create table student(
          id number(4),
          name varchar2(10)
       );
--11.进入system给用户授予建表权限:
       grant create table to haha;
          -- create table:建表权限   
          
--12.修改密码：将haha用户的密码修改成123
      alter user haha identified by 123;
      
--13.设置密码过期:
      alter user haha password expire; 
      
--14.设置账号锁定:lock;
      alter user haha account lock;
--15.解锁账号:
      alter user haha account unlock; 
      
--16.删除用户：
     drop user haha cascade;
        --1.cascade:先删除用户在删除用户下的所有对象。
        --2.当前用户不能删除自己  
        
--17.授权：grant 权限  to 用户。
     --授予登录权限：
         grant create session to 用户。
     --授予建表权限
          grant create table to 用户。
          
--18.通过角色授予权限:
     --1.创建角色：
        --角色是接收权限的。用户可以通过角色授予权限。
       create role test_role;
     --2.给角色授予权限
        grant create session,create table to test_role;
          --可以同时给角色授予多个权限。
     --3.通过角色给用户授予权限
         --1.创建一个用户
            create user haha identified by ok;
         --2.通过角色给haha授权
            grant test_role to haha;  
         --3.登录用户haha测试：
         --4.从用户中收回角色
            revoke test_role from haha;
         --5.从角色中收回权限
            revoke create session,create table from test_role;
         --6.删除角色:
            drop role test_role;       
                    
                                        
      
           
                 
                     
                 
          
             
        
        
       
       
       
       
       
       
       
       
       
             
                   
     
