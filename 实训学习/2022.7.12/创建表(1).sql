--1.default:������ʱ��Ĭ��ֵ
    create table stu1(
       id number(4),
       name varchar2(10),
       sex char(2) default '��'
    )
    -- ��û�и������ֶθ�ֵ���������û��Ĭ��ֵ�ġ�
    --sex����Ҫ��ֵ������Ĭ��ֵ
    insert into stu1(id,name)
    values(1,'����');
    --��oracle��insert,delete,update������ʱҪ�ύ����
    --��ѯ����
    select * from stu1;
    --�������ʱ�����ǵ�ǰ��¼��Ĭ��ֵ
    insert into stu1(id,name,sex)
    values(2,'С��','Ů');
    
--2.��������:
     --1.�ַ�����
         --1.char:�̶����ȣ�Ĭ��ֵ��1����󳤶���2000��
            --�̶����ȣ�sex char(4):��--��2���ֽڣ���ʣ�����ֽڣ�ʣ�µ��ֽ�ϵͳ�����ͷŵ���
            --������ɿռ��˷�
         --2.varchar2:�ɱ䳤�ȣ�Ĭ�ϳ�����1����󳤶���4000��
            --�ɱ䳤�ȣ�name varchar2(10):����---��4���ֽڣ���ʣ6���ֽڡ�ϵͳ���Զ��ͷŵ�û��
            --ռ�õĿռ䡣���������Դ�˷ѡ�
         --3.clob:�ɱ䳤�ȣ����4g      
     --2.��ֵ����
           --number:�ȿ��Ա�ʾ����Ҳ���Ա�ʾС��
           --number(n):ֻ�ܱ�ʾ����
           --number(p,s):��ʾС����p��ʾ��������λ���ĳ��ȣ�s��ʾ����С��λ����(p-s)��ʾ����λ��
              --1.s>0:��ʾС����С��λ����ȷ��sλ���������Ȳ��ܳ���pλ
              --2.s<0:��ʾ������������ȷ��С������ߵ�sλ�����������롣����λ��<p+|s|λ
              --3.p<s:ֻ�ܱ�ʾС��1��С�����Ҵ�С�����ұ߿�ʼ��ǰs-pλ������0.����sλС����
     --3.��������  
            --date:��ʾ��ȷ��������ʱ����
            --timestamp:��ȷ������
            
--3.������:
          create table dossier(
              id number(4),
              cname varchar2(10),
              birthday date,  --date�����ǹ̶���ʽ���Բ���Ҫָ������
              weight number(5,2),
              country_code char(2) default '01'
             
          )  
          
-- 4.�������:  yyyy-mm-dd hh:mi:ss  yy��ʽ����oracle�����ַ����͡�����Ҫת������������
        insert into dossier(id,cname,birthday,weight)
        values(1,'����',to_date('2022-7-12 14:18:20','yyyy-mm-dd hh24:mi:ss'),34.23);
--5.��ѯ����:
        select * from dossier; 
--6.ͨ���Ӳ�ѯ�������:
        create table emp1
        as
        select * from emp;
      --��ѯ��emp1
      select * from emp1;  
      
--7.����Ӳ�ѯ���б��ʽ��ôҪ�����ʽ��һ������:
        create table emp2
        as
        select empno,ename,sal*12+nvl(comm,0) ��н,deptno
        from emp;
       --��ѯ��emp2
       select * from emp2; 
--8.��ѯ�����û��ı�:�û���.����
        select * from system.book; 
             
                
                              
              
    
    
    
    
