--1.Լ����constraint
        --��һ�ֱ�֤���������ԵĹ���Լ�������ڵ����ֶλ��߶���ֶ�����ϣ�
        --д����Щ�ֶε������ݱ���Ҫ����Լ���Ĺ���
        --1.not null:�ǿ�Լ��:���õ��ֶβ���Ϊnull
            drop table dossier;
            create table dossier(
               id number(4),
               name varchar2(10) not null,
               age number(4)
            )
            insert into dossier(id,age)
            values(1,21);
        
        --2.primary key:����Լ��:Ψһ�ԣ��ǿ���
            --1.�м���������������
             create table dossier(
                 id number(4) constraint dossier_id_pk primary key,
                 name varchar2(10),
                 age number(10)
             ) 
             insert into dossier(name,age)
             values('����',21); 
             --.�������Լ��
                create table dossier(
                 id number(4),
                 name varchar2(10),
                 age number(10),
                 constraint dossier_id_pk primary key(id) --�����������Լ��
             ) 
             
             
             select * from dossier;
        
        --3.unique:Ψһ��Լ��:
        
        --4.check:�����Լ��:
        
        --5.foreign key:�⽨Լ��:
        
        
         
