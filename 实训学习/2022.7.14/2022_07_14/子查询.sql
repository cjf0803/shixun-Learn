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
             
       
       
       
       
       
             
