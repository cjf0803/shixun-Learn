--1.���麯����
    --1.5���ۺϺ���
        --1.max:�����ֵ
            select max(sal) ��߹���
            from emp; 
        --2.min:����Сֵ
            select min(sal)
            from emp;
        --3.sum:���
             select sum(sal)
             from emp;
             select sal from emp;
               
        --4.avg:��ƽ��ֵ
              select avg(sal)
              from emp;
        --5.count:���ܼ�¼��
             --countͳ�Ƶ�����
            select count(*) 
            from emp;
--��ϰ1��
     --1.1.��ѯ����20��Ա����ÿ���µĹ����ܺͼ�ƽ�����ʡ�
           select sum(sal),avg(sal)
           from emp
           where deptno=20;
           
     --2.��ѯ������CHICAGO��Ա����������߹��ʼ���͹���
           select max(e.sal),min(e.sal)
           from emp e,dept d
           where e.deptno=d.deptno
           and d.loc='CHICAGO';  
           
     --3.��ѯԱ������һ���м��ָ�λ���� 
          select count(distinct(deptno))
          from emp;
          
--2.group by:�����Ӿ�
       --1.group by ������ֶ�
        --��ѯÿ�����ŵı�ţ�ƽ������ 
          select deptno,avg(sal)
          from emp
          group by deptno; 
       --2.ע�⣺��select�б��г��˾ۺϺ����������ֶα������group by����
          select deptno,job,sum(sal)
          from emp
          group by deptno;
          
       --3.ע�⣺group by������ֵ��ֶβ����Ǳ��������select�б���
           select sum(sal)
           from emp
           group by deptno;    
       --4.���з��麯����
           --��ѯÿ������ÿ����λ�Ĺ����ܺ�    
           select deptno,sum(sal)
           from emp
           group by deptno,job; 
 --��ϰ2��
      --1.��ѯÿ�����ŵĲ��ű�ţ��������ƣ�������������߹��ʣ���͹��ʣ������ܺͣ�ƽ�����ʡ�
          select e.deptno,d.dname,count(e.empno),max(e.sal),min(e.sal),sum(e.sal),avg(e.sal)
          from emp e,dept d
          where e.deptno=d.deptno
          group by e.deptno,d.dname;
          
      --2.��ѯÿ�����ţ�ÿ����λ�Ĳ��ű�ţ��������ƣ���λ���ƣ�����������
      --��߹��ʣ���͹��ʣ������ܺͣ�ƽ������
          select d.dname, e.deptno,e.job,count(e.empno),max(e.sal)
          from emp e,dept d
          where e.deptno=d.deptno
          group by d.dname,e.deptno,e.job;   
          
--3.having:
      --���麯��������where�й��ˡ�Ҫ�ڷ���group by֮����й���
      --ͨ��having���˷��麯����ֻҪ�ǹ���5���ۺϺ�������ô������having
       --��ѯÿ��������߹��ʴ���2900�Ĳ��ű�ţ���߹���
          select deptno,max(sal)
          from emp
          group by deptno
          having max(sal)>2900
          
--4.sql����д˳��
       select   from   where group by  having  order by 
--5,sql��ִ��˳��:
       from where group by  having  select order by
       
--��ϰ3��
    --1.��ѯ������������2�Ĳ��ű�ţ��������ƣ���������
        select e.deptno,d.dname,count(e.empno)
        from emp e,dept d
        where e.deptno=d.deptno
        group by e.deptno,d.dname
        having count(e.empno)>2  
        
    --2.��ѯ����ƽ�����ʴ���2000������������2�Ĳ��ű�ţ��������ƣ�����������
    --����ƽ�����ʣ������ղ��������������� 
        select e.deptno,d.dname,count(e.empno) countno,avg(e.sal)
        from emp e,dept d
        where e.deptno=d.deptno
        group by e.deptno,d.dname
        having avg(e.sal)>2000
        and count(e.empno)>2 
        order by countno;
        
        --��ѯÿ����������ƽ��нˮ
         select max(avg(sal))
         from emp
         group by deptno;
               
       
                       
          
                  
      
                                               
            
            
        
