--1.�Ӳ�ѯ��
    --�����ڵĲ�ѯ���Ӳ�ѯ��Ҳ���ڲ���ѯ����������ѯִ��
    --�Ӳ�ѯ�Ľ��������ѯʹ��
    --�Ӳ�ѯ�����������
      --1.��������� =  >  >=  <  <=  <>
      --2.��������� in  any all
--2.�Ӳ�ѯ��д����Щ�ط�
     --where�Ӿ���棺  where sal>(�Ӳ�ѯ)
     --having�Ӿ�ĺ���:  having max(sal)>(�Ӳ�ѯ)
     --from�Ӿ����: from (�Ӳ�ѯ)
   --��ѯ����JONESΪ��Ա���ʸߵ�������Ա
       --��ѯJONES�Ĺ����Ƕ���
       select sal
       from emp
       where ename='JONES'; 
       --��д����ѯ
       select ename,sal,hiredate
       from emp
       where sal>(
          select sal
         from emp
         where ename='JONES'
       ); 
--3.�Ӳ�ѯ��ʹ��:
      --1.�Ӳ�ѯҪ������������
      --2.���Ӳ�ѯ���ڱȽ���������ұ�
      --3.���ڵ����Ӳ�ѯʹ�õ��������
      --4.���ڶ����Ӳ�ѯʹ�ö��������
      
     --��ʾ�͹�Ա7369������ͬ�������ҹ��ʴ��ڹ�Ա7876�Ĺ�Ա�������͹���
       --1.��ѯ7369�Ĺ�����λ
         select job
         from emp
         where empno=7369
       --2.��ѯ7876��Ա������
         select sal
         from emp
         where empno=7876
         
       --3.��д����ѯ
          select ename,job,sal
          from emp
          where job=(
            select job
         from emp
         where empno=7369
          )
          and sal>(
              select sal
         from emp
         where empno=7876
          ) 
          
      --��ѯ������͵�Ա����������λ������
          --1.��ѯ��͹���
          select min(sal)
          from emp
          --2.��д����ѯ
          select ename,job,sal
          from emp
          where sal=(
             select min(sal)
             from emp
          ) 
          
       --��ѯ������͹��ʱ�20������͹��ʸߵĲ��ű�ż���͹���
          --1.��ѯ20���ŵ���͹���
          select min(sal)
          from emp
          where deptno=20
          
          --2.��д����ѯ��
          select deptno,min(sal)
          from emp
          group by deptno
          having min(sal)>(
             select min(sal)
             from emp
             where deptno=20
          )
       --��ѯ�ĸ����ŵ�Ա������ ���ڸ�����ƽ��������
          --1.��ѯ�����ŵ�ƽ������
          select avg(count(empno))
          from emp
          group by deptno;
          
          --2.��д����ѯ��
          select deptno,count(empno)
          from emp
          group by deptno
          having count(empno)>(
              select avg(count(empno))
              from emp
              group by deptno
          ) 
          
 --4.�����﷨:
       select min(sal)
       from emp
       group by deptno;
       --��������ѯ��
       select
       from where sal=;
       --=�ǵ���������������Ӳ�ѯ���ص��Ƕ������ݡ�Ҫ��=���ɶ��������
       select ename,sal
       from emp
       where sal in(select min(sal)
             from emp
             group by deptno) 
             
--��ϰ1��
    --1.��ѯ���ʱ�SMITH���ʸ߲��ҹ����ص���CHICAGO��Ա�����������ʣ���������
        --1.��ѯSMITH�Ĺ����Ƕ���
        select sal
        from emp
        where ename='SMITH' ;
        --����ѯ
        select ename,sal,d.dname
        from emp e,dept d
        where e.deptno=d.deptno
        and d.loc='CHICAGO' 
        and sal>(
            select sal
            from emp
            where ename='SMITH'
        )
        
        --2.��ѯ��ְ���ڱ�20������ְ���������Ա����Ҫ���Ա����������ְ����
        --1.��ѯ20���ŵ��������ְ����
            select min(hiredate)
            from emp
            where deptno=20;
            
         --2.����ѯ
            select ename,hiredate
            from emp
            where hiredate<(
              select min(hiredate)
              from emp
              where deptno=20 
            ) 
            
         --3.��ѯ���������������в���ƽ�������ĵĲ��ű�ţ��������ƣ���������
           --1.��ѯ�����ŵ�ƽ������
              select  avg(count(empno))
              from emp
              group by deptno
              
            --2.����ѯ
              select e.deptno,d.dname,count(e.empno)
              from emp e,dept d
              where e.deptno=d.deptno
              group by e.deptno,d.dname
              having count(empno)>(
                 select  avg(count(empno))
                 from emp
                 group by deptno
              )  
              
--4.�����Ӳ�ѯ:
       --���صĽ���Ƕ�����¼
         --��ѯ�Ǿ����Ա������������
          --1.��ѯ������:
           select mgr
           from emp;
          --2.��д����ѯ:
            select ename,sal
            from emp
            where empno in(
               select mgr
               from emp
            ); 
            
--5.�����Ӳ�ѯ��any
   --1.<any:С���Ӳ�ѯ����е�����һ��
      
       --��ѯ���ű�Ų�Ϊ10���ҹ��ʱ�10��������һ�����ʵ͵�Ա����ţ�������ְλ�����ʡ�
         --1.��ѯ10���ŵ�Ա������
           select sal
           from emp
           where deptno=10;
         --2.����ѯ��  
            select empno,ename,job,sal
            from emp
            where sal<any(
                select sal
                from emp
                where deptno=10
            )
            and deptno<>10;
   
   --2.>any:�����Ӳ�ѯ����е�����һ��
         --��ѯ���ű�Ų�Ϊ10���ҹ��ʱ�10��������һ��Ա�����ʸߵ�Ա����ţ�������ְλ�����ʡ�
         --1.��ѯ10���ŵ�Ա������
             select sal
             from emp
             where deptno=10;
           --2.����ѯ
              select empno,ename,job,sal
              from emp
              where sal >any(
                select sal
                from emp
                where deptno=10
              ) 
              and deptno<>10;
   --3.=any:�����Ӳ�ѯ����е�����һ��(in) 
   
   
--6.�����Ӳ�ѯ:all
    --1.<all:С���Ӳ�ѯ�����е�����
        --1.��ѯ���ű�Ų�Ϊ10���ҹ��ʱ�10��������Ա�����ʸߵ�Ա����ţ�������ְλ������
        
    --2.>all:�����Ӳ�ѯ�����е�����
        --1.��ѯ���ű�Ų�Ϊ10���ҹ��ʱ�10��������Ա�����ʵ͵�Ա����ţ�������ְλ������
         
    
    --3.=all:�����Ӳ�ѯ�����е����� 
        --1.��ѯ���ű�Ų�Ϊ10���ҹ��ʺ�10��������Ա��������ȵ�Ա����ţ�������ְλ������                             
                              
             
--7.�����Ӳ�ѯ:
      --���Ӳ�ѯ�ж���н��бȽ�
      --�����Ӳ�ѯͨ��ʹ��in
      
      --��ѯ����1981����ְ������һ��Ա���Ĳ��ź�ְλ��ȫ��ͬԱ��������
      --���š�ְλ����ְ����,������1981����ְԱ����
           --1.��ѯ1981����ְԱ���Ĳ��ź�ְλ
              select deptno,job
              from emp
              where to_char(hiredate,'yyyy')=1981 
           --2.����ѯ:
              select ename,deptno,job,hiredate
              from emp
              where (deptno,job) in(
                   select deptno,job
                   from emp
                   where to_char(hiredate,'yyyy')=1981   
              )
              and to_char(hiredate,'yyyy')<>'1981';
              
--8.�Ӳ�ѯ�������null����ô���ܺ�not in���á����򷵻�null
            select ename,mgr,empno
            from emp
            where empno not in(
               select mgr
               from emp
            );
   --��ѯ���Լ�����ƽ�����ʸߵ�Ա�����������ʣ����ű�ţ�����ƽ������
       --1.��ѯÿ�����ŵ�ƽ������
         select deptno,avg(sal)
         from emp
         group by deptno;
       --2.����ѯ
         select e.ename,e.sal,d.avgsal
         from emp e,(
             select deptno,avg(sal) avgsal
             from emp
             group by deptno 
         ) d
         where e.deptno=d.deptno
         and e.sal>d.avgsal; 
         
 --9.rownum:α�С������ݱ������ڣ�����������ݡ�������������Ǵ�1��ʼ
     --rownum������������Ϊ��ҳ
        select ename,job,hiredate,rownum
        from emp
        where rownum>2;        
     --rownum��order by:
        --�������һ��ʹ�ã�rownum�������Ȳ����ģ�order by����ʱ���ִ��
        --���Ľ���ᵼ��rownum����������û����˳������
        --���һ����֣���ôҪ��order by����rownumִ�С�
        --��ѯ��������5λԱ������Ϣ
           select d.*,rownum
           from (
               select ename,sal,job,hiredate
               from emp
               order by sal desc
            ) d
            where rownum<=5;
            
          --���:
             select d.*,rownum
           from (
               select e.ename,e.sal,e.job,e.hiredate,d.dname
               from emp e,dept d
               where e.deptno=d.deptno
               order by e.sal desc
            ) d
            where rownum<=5; 
            
--10.��ҳ:
      --index:��ǰҳ��
      --size:ÿҳ��ʾ������
      --(index-1)*size:��ҳ�����һ������
      --index*size:��ǰҳ���һ������
      
      --���û��order byʹ�������Ӳ�ѯ
       select d.* from
            (select empno,ename,sal,hiredate,rownum r
            from emp) d 
       where r>(index-1)*size and r<=index*size 
            --ע��rownum�ı����������Ӳ�ѯ�в�����Ч��            
         
        select d.* from
            (select empno,ename,sal,hiredate,rownum r
            from emp) d 
       where r>(1-1)*4 and r<=1*4
           --index=1:��һҳ  2���ڶ�ҳ
           --size=4:ÿҳ��ʾ4������
           
      --�����order by,��ôҪ��order by��������㣬��֤������ִ��
         select * from   
           (select d.*,rownum r from
             (select empno,ename,job,hiredate,sal
             from emp     
             order by sal) d )
         where r>5 and r<=10    
            
            
        
         
                     
            
                          
                       
       
       
       
       
             
