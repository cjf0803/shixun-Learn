--1.�޶����ݲ�ѯ������where������ѯָ���ļ�¼��
--2. where ������  �Ƚ������  ֵ
--3.�Ƚ������: >   >=  <  <=  <>
--4.�Ƚϵ�ֵ:
    --1.�Ƚ��ַ�����
          select ename,sal,deptno
          from emp
          where ename ='SMITH';
          
         --��ѯ��������SMITH��Ա��
         select ename,sal,deptno
         from emp
         where ename<>'SMITH';      
          --һ��������ַ��ıȽ�ʵ��=����<>
         SElect * from emp;
    --2.�Ƚ���ֵ����
         select ename,sal,hiredate,deptno
         from emp
         where sal>3000;
    
    --3.�Ƚ���������
         select  ename,hiredate,sal
         from emp
         where hiredate>to_date('1981-11-17','yyyy-mm-dd');
         
         select ename,hiredate,sal
         from emp
         where hiredate <to_date('1981-11-17','yyyy-mm-dd');
         
--��ϰ1��
     --1..��ѯְλΪSALESMAN��Ա����š�ְλ����ְ���ڡ�
         select empno,job,hiredate
         from emp
         where job='MANAGER'; 
         
     --2..��ѯ1985��12��31��֮ǰ��ְ��Ա����������ְ���ڡ�
         select ename,hiredate
         from emp
         where hiredate<to_date('1985-12-31','yyyy-mm-dd');
         
     --3.  ��ѯ���ű�Ų���10���ŵ�Ա�����������ű�š�
         select ename,deptno
         from emp
         where deptno<>10;
         
--5.����Ƚ������:
      --1.between  and:
         --�Ƚϵ���������ͬ��������֮�������
         --1.�ַ�����
             select ename,hiredate,sal,deptno
             from emp
             where ename between 'CLARK' and 'SMITH';
         --2.��ֵ����
             select ename,sal,hiredate
             from emp
             where sal between 2300 and 3502; 
                --��������ֵ������ֵ
         --3.�������� 
             select  ename,hiredate
             from emp
             where hiredate between to_date('1981-6-9','yyyy-mm-dd') and to_date('1982-1-23','yyyy-mm-dd');        
            
     --in�������б��ж�Ҫ�Ƚϵ�ֵ�Ƿ�ͼ����е�����һ����ȡ�����ȵľͻ᷵�ظ�����
         --1.�ַ�����
             select ename,hiredate,sal
             from emp
             where ename in('SMITH','smith','KING','a'); 
         --2.��ֵ����
             select ename,hiredate,sal
             from emp
             where sal in(600,2700,3502,1);
         --3.��������  :oracleĬ��֧�ֵ�����������RR��ʽ��DD-MON-RR     
             select ename,hiredate,sal
             from emp
             where hiredate in('9-6��-81','17-11��-81','23-1��-82');
             
--��ϰ2��
         --1.��ѯ��ְ������82����85���Ա����������ְ���ڡ�
             select ename,hiredate
             from emp
             where hiredate between '01-1��-82' and '31-12��-85';
             
         --2.��ѯ��н��3000��5000��Ա����������н
             select ename,hiredate
             from emp
             where sal between 3000 and 5000; 
             
         --3.��ѯ���ű��Ϊ10����20��Ա�����������ű�š�
             select ename,deptno
             from emp
             where deptno in(10,20);
             
         --4.��ѯ������Ϊ7902, 7566, 7788��Ա�������������š�
             select ename,mgr
             from emp
             where mgr in(7902,7566,7788); 
             
     --like:ģ����ѯ:
         --����ͨ�����
           --1. _:��������һ���ַ�
           --2.%�������������ַ�
             --��ѯ�����е�һ����ĸ��S��Ա����Ϣ
             select ename,sal,hiredate
             from emp
             where ename like 'S%';
             --��ѯ�ڶ�����ĸ��M��Ա����Ϣ������һ����ĸ�����ⶼ����
             select ename,sal,hiredate 
             from emp
             where ename like '_M%';
             
             --��ѯ���һ����ĸ��H��Ա����Ϣ
             select ename,hiredate
             from emp
             where ename like '%H';
             
             --��ѯ�����ڶ�����ĸ��T��Ա����Ϣ
             select ename,hiredate
             from emp
             where ename like '%T_';
             
             --��ѯ�����а���A��Ա����Ϣ:
             select ename,hiredate
             from emp
             where ename like '%A%';
             
       --is null:�ж�ֵ��null
             select ename,hiredate
             from emp
             where hiredate is null;
       --is not null:��ѯ����null����Ϣ
             select ename,hiredate
             from emp
             where hiredate is not null; 
             
--��ϰ3��
      --1.��ѯԱ��������W��ͷ��Ա������
             select ename,hiredate
             from emp
             where ename like 'W%'; 
      --2.��ѯԱ������������2���ַ�ΪT��Ա������
             select ename
             from emp
             where ename like '%T_';
             
      --3.��ѯ����Ϊ�յ�Ա������������
             select ename,comm
             from emp
             where comm is null;   
             
             
 --6.�߼������:
      --and:�߼��룬�������Ӷ�����ʽ�����ÿ�����ʽ��Ϊtrue,��ô�������ʽΪtrue
           --н�ʴ��ڵ���1100���Ҹ�λ��CLERK�ġ�
           select ename,sal,job
           from emp
           where sal>=1100
           and job='CLERK';
      --or:�߼��򣬿������Ӷ�����ʽ�������һ�����ʽΪtrue,��ô�������ʽΪtrue
             select ename,sal,job
           from emp
           where sal>=30000  --��false
           or job='CLERK';  --��true.�����true.���ص����ݸ�λ����CLERK;
      
      --not:�߼��ǣ��������������ʽȡ�� 
           --Ӧ�ó�����
              --1.not��between  and ����
                 --��ѯ���ʲ���2000��3000֮���Ա����Ϣ
                select ename,sal,job
                from emp
                where sal not between 2000 and 3000;
              --2.not��in����
                --��ѯ��λ����CLERK���з���
                  select ename,sal,job
                  from emp
                  where job not in('CLERK','�з���');
              --3.not��like����
                --��ѯ��ͷ��ĸ����S��Ա����Ϣ
                  select ename,sal,hiredate
                  from emp
                  where ename not like 'S%';   
              
              --4.not��null����   
                   --��ѯ������null��Ա����Ϣ
                   select ename,hiredate
                   from emp
                   where hiredate is not null; 
                   
--7.�߼�����������ȼ�
     --not   and or
        select ename,job,sal
        from emp
        where job='SALESMAN'
        or job='PRESIDENT'
        and sal>1500;
     --���ſ��Ըı����ȼ�
          select ename,job,sal
        from emp
        where (job='SALESMAN'
        or job='PRESIDENT')
        and sal>1500;  
        
 --��ϰ4��
      --1.��ѯ���ʳ���2000����ְλ��MANAGER,����ְλ��SALESMAN��Ա��������ְλ������
          select ename,job,sal
          from emp
          where sal>2000
          and job='MANAGER'
          or job='SALESMAN' ;
      --2.��ѯ���ʳ���2000����ְλ�� MANAGER��SALESMAN��Ա��������ְλ�����ʡ�
          select ename,job,sal
          from emp
          where sal>2000
          and job in('MANAGER','SALESMAN');   
          
      --3.��ѯ������10����20�����ҹ�����3000��5000֮���Ա�����������š�����
          select ename,deptno,sal
          from emp
          where deptno in(10,20)
          and sal between 3000 and 5000;
          
      --4.��ѯ��ְ������81�꣬����ְλ����SALES��ͷ��Ա����������ְ���ڡ�ְλ
          select ename,hiredate,job
          from emp
          where hiredate between '1-1��-81' and '31-1��-81'
          and job not like 'SALES%';
          
      --5.��ѯְλΪSALESMAN��MANAGER�����ű��Ϊ10����20����������A��Ա��������ְλ�����ű�š�
          select ename,job,deptno
          from emp
          where job in('SALESMAN','MANAGER') 
          and deptno in(10,20)
          and ename like '%A%'; 
          
 --8.order by:����
       --��������asc,Ĭ�������ǰ�����������
       --��������:desc
          --1.��������
              --1.�ַ�����
                  select ename
                  from emp
                  order by ename;--�����д���������Ǿ��ǰ�����������
              --2.��ֵ����
                  select ename,sal
                  from emp
                  order by sal desc;
                    --ע�⣺������ս�������,null���������档���������������null����������
              --3.��������
                  select  ename,hiredate
                  from emp
                  order by hiredate asc;
          --2.��������
                  select ename,deptno,sal
                  from emp
                  order by deptno asc,sal desc;
                     --�ڵ�һ�������еĻ����϶Եڶ����ֶ�����
          --3.�����б�������":
                  select ename,sal*12 newsal
                  from emp
                  order by newsal desc;
                             
                     
                                 
                                   
                                 
                   
                          
        
              
    
    
    
    
    
    
    
    
    
    
