--1.����scott���˺�
     alter user scott account unlock;    
--2.scott��������tiger 

--3.�޸�����:
      alter user scott identified by tiger;
--4.�˽�oracle�Ľṹ��
      -- ��ռ�----���û�----�����ݿ�Ķ���
--5.usersĬ�ϱ�ռ�
     --���������ݿ�����ʱ�򣬾ʹ�����users�����ռ䡣�������
     -- �û���ָ����ռ���ô���û��洢��Ĭ�ϱ�ռ����档
     --��������û���ָ���˱�ռ䣬��ô���û��洢��ָ���ı�ռ�����
     
--6.�����Զ����Ĭ�ϱ�ռ䣺 
       create tablespace test3
       datafile 'D:\oracle1\test1.dbf'
       size 200m
       autoextend on next 100m
       maxsize unlimited ;  
       
 --7.������ʱ��ռ䣺
       create temporary tablespace test4
       tempfile 'D:\oracle1\test4.dbf' 
       size 200m
       autoextend on next 100m
       maxsize 400m;  
       
 --8.�����û���ָ��Ĭ�ϱ�ռ����ʱ��ռ䣺
        --ֻ��ӵ��dbaȨ�޵��û����ܴ������û����´������û�û���κβ���Ȩ�ޡ�
        --ֻ���������Ȩ�޲�����Ȩ�޷�Χ�ڵĲ�����
       create user haha 
       identified by ok
       default tablespace test3
       temporary tablespace test4 quota unlimited on test3; 
       --quota unlimited on test3; ͨ���Զ����Ĭ�ϱ�ռ�test3���û�haha�����ڴ档
       
--9.��haha�û������¼��Ȩ��:
       grant create session to haha;
          -- create session�ǵ�¼Ȩ��
          
--10.������:
       create table student(
          id number(4),
          name varchar2(10)
       );
--11.����system���û����轨��Ȩ��:
       grant create table to haha;
          -- create table:����Ȩ��   
          
--12.�޸����룺��haha�û��������޸ĳ�123
      alter user haha identified by 123;
      
--13.�����������:
      alter user haha password expire; 
      
--14.�����˺�����:lock;
      alter user haha account lock;
--15.�����˺�:
      alter user haha account unlock; 
      
--16.ɾ���û���
     drop user haha cascade;
        --1.cascade:��ɾ���û���ɾ���û��µ����ж���
        --2.��ǰ�û�����ɾ���Լ�  
        
--17.��Ȩ��grant Ȩ��  to �û���
     --�����¼Ȩ�ޣ�
         grant create session to �û���
     --���轨��Ȩ��
          grant create table to �û���
          
--18.ͨ����ɫ����Ȩ��:
     --1.������ɫ��
        --��ɫ�ǽ���Ȩ�޵ġ��û�����ͨ����ɫ����Ȩ�ޡ�
       create role test_role;
     --2.����ɫ����Ȩ��
        grant create session,create table to test_role;
          --����ͬʱ����ɫ������Ȩ�ޡ�
     --3.ͨ����ɫ���û�����Ȩ��
         --1.����һ���û�
            create user haha identified by ok;
         --2.ͨ����ɫ��haha��Ȩ
            grant test_role to haha;  
         --3.��¼�û�haha���ԣ�
         --4.���û����ջؽ�ɫ
            revoke test_role from haha;
         --5.�ӽ�ɫ���ջ�Ȩ��
            revoke create session,create table from test_role;
         --6.ɾ����ɫ:
            drop role test_role;       
                    
                                        
      
           
                 
                     
                 
          
             
        
        
       
       
       
       
       
       
       
       
       
             
                   
     
