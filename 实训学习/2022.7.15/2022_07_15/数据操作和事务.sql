--1.�������ݣ�
    --1.�����ָ��������ֶΣ���ôҪ���ȫ������
       create table dossier(
           id number(4),
           name varchar2(10),
           age number(4),
           birth date
       )
      insert into dossier
      values(1,'����',21,to_date('2022-7-15','yyyy-mm-dd')); 
      --��ѯ����
      select * from dossier;
    --2.�������������Щ�ֶ����ֵ����ô����ָ���ֶ��������
      insert into dossier(id,name,age)
      values(2,'����',22) ;
    --3.���null��
       --1.�����ֶ�ָ������ֵ����ô���ֶξ���null
       
       --2.ֱ�Ӹ��ֶθ�ֵnull
      insert into dossier(id,name,age,birth)
      values(3,null,23,'13-7��-22');  
      
    --4.ͨ���Ӳ�ѯ���������where��������������ô�������Ǳ�ṹ
       create table emp1
       as
       select * from emp
       where 1=0; 
       
     --5.ͨ���Ӳ�ѯ���������where����������ô������ͬʱ�����ݸ�ֵ���±���
        create table emp2
       as
       select * from emp
       where 1=1;
       
     --5.ͨ���Ӳ�ѯ��ָ���ֶ��������
        select * from emp1 
        insert into emp1(empno,ename,sal,hiredate,deptno)
        select empno,ename,sal,hiredate,deptno
        from emp;
     --6.ͨ���Ӳ�ѯ�������ֶ����ֵ
        insert int emp1
        select * from emp;     


--2.�޸����ݣ�
     --�޸�������Ҫ��������ָ�������޸ı���ĳЩ�е�������
     --where�޶�Ҫ�޸ĵ���
     --setָ��Ҫ�޸ĵ��ֶ�
     --��Ա�����Ϊ7782�Ĳ��ű���޸�Ϊ20
       update emp set deptno=20
       where empno=7788;
     --�޸�7788��Ա����������1000
       update emp set sal=sal+1000
       where empno=7788;
     --�����޸�
        --�޸�7788�Ĺ�������500����������500
       update emp set sal=sal+500,comm=comm+500
       where empno=7788;
--3.ɾ������:
     --ɾ��������Ҫ��������ָ�������ӱ���ɾ��ĳЩ�С�
     --ͨ��whereɾ��ָ����
      --ɾ��ְλ��CLERK��Ա����¼
      delete from emp
      where job='CLERK' ;
      --ָ����Χɾ��
      delete from emp
      where sal between 1000 and 2000;
      
--4.�������
    --������Ǳ�֤���ݵ�һ���ԡ�Ҫôͬʱ�ɹ�Ҫôͬʱʧ�ܡ�
    --������ĸ�������
       --1.ԭ����
       --2.һ����
       --3.������
       --4.�־���
       
    --�������ɣ�
        --������Ŀ���������Ľ�������������һ������
        --��ʲô����»Ὺ����
           --insert   update  delete
        --��ʲô����½������� 
           --������һ����ص�DML��SELECT��䣬����һ��TPL��䣨COMMIT��ROLLBACK��
           --��һ��DDL���(CREATE��ALTER��DROP��TRUNCATE��)��һ��DCL��GRANT��REVOKE����䡣
           
                   
         
        
        
        
        
        
        
        
        
              
      
         
