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
            --1.�м����Ψһ��Լ����
             create table dossier(
               id number(4),
               name varchar2(10) constraint dossier_name_uq unique,
               age number(4)
            )
            --2.�����Լ��  
            create table dossier(
               id number(4),
               name varchar2(10),
               age number(4),
               constraint dossier_name_uq unique(name)
            )
            
            insert into dossier(id,name,age)
            values(1,'����',21);
            
             insert into dossier(id,name,age)
            values(2,'����',22);
         
        --4.check:�����Լ��:
           --���ֶε�ֵ������ĳ�����䷶Χ��:
           drop table dossier;
           create table dossier(
             id number(4) constraint dossier_id_pk primary key,
             name varchar2(10),
             age number(10),constraint dossier_age_ck check(age between 20 and 30),
             sex varchar2(2)constraint dossier_sex_ck check(sex in('��','Ů'))
           )
           insert into dossier(id,name,age,sex)
           values(1,'����',23,'er')   
        
        --5.foreign key:�⽨Լ��:
              --��������
              create table class1(
                cid number(4) primary key,
                cname varchar2(10)
              )
              insert into class1(cid,cname)
              values(1,'java');
              insert into class1(cid,cname)
              values(2,'php');
              --��ѯ����
              select * from class1;
              --���Ǵӱ�
              create table student1(
                sid number(4) primary key,
                sname varchar2(10),
                sage number(4),
                cid number(4) constraint student1_cid_fk references class1(cid)
              )
              
              --�����Լ��
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
              
              --1.�⽨�����������е�����
              --2.������ʱҪ�ȴ��������ڴ����ӱ�
              --3.�ӱ��е��⽨ֵ����������������ֵ
               insert into student1(sid,sname,sage,cid)
               values(1,'����',21,1);
                insert into student1(sid,sname,sage,cid)
               values(2,'����',22,2);
        
               --����������û�����ֵ
               insert into student1(sid,sname,sage,cid)
               values(2,'����',22,3);
               --3.����ӱ��е��⽨������������������ֵ����ô�����б����õ�����ֵ���ܱ�ɾ��
               delete from class1 where cid=1;
               --4.�����Ҫɾ�������б����õ�������ô����Ҫ���ӱ����õ�����ɾ����
               --ɾ���ӱ���cid��1������
               delete from student1 where cid=1;
               --ɾ��������cid��1������
               delete from class1 where cid=1; 
               --4.��ɾ���ӱ���ɾ������
                 --ɾ���ӱ�
                 drop table student1;
                 --ɾ������
                 drop table class1;
                 
                 
               
--2.������Լ����ϵ��ֻ�����⽨��ʵ�ֶ���ѯ                
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
               values(1,'����',21,1);
                insert into student1(sid,sname,sage,cid)
               values(2,'����',22,2);
        
              --ɾ��������cid=1������
              delete from student1 where cid=1;
              --������ӣ�
              select s.sname,s.sage,s.cid,c.cid,c.cname
              from student1 s,class1 c
              where s.cid=c.cid;
        
        
        
        
        
        
        
        
        
         
