--��ҵ��
--1.��ѯ������20��30��Ա�����������ű�ţ������չ�����������
select ename,deptno,sal
from emp
where deptno in (20,30)
order by sal asc


--2.��ѯ������2000-3000֮�䣬���Ų���10�ŵ�Ա�����������ű�ţ����ʣ������ղ������򣬹��ʽ�������
select ename ,deptno,sal
from emp
where sal between 2000 and 3000
and deptno<>10
order by deptno asc,sal desc

--3.��ѯ��ְ������82����83��֮�䣬ְλ��SALES����MAN��ͷ��Ա����������ְ���ڣ�ְλ����������ְ���ڽ�������

select ename,hiredate,job
from emp
where hiredate between '1-1��-1982' and '31-12��-83' 
and job like 'SALES%' or job like 'MAN%'
order by hiredate desc
--4.��ѯ��ְʱ����1982-7-9֮�󣬲��Ҳ�����SALESMAN������Ա����������ְʱ�䡢ְλ��
select ename,hiredate,job
from emp
where hiredate>'9-7��-1982' and job<>'SALESMAN'

--5.��ѯԱ�������ĵ�������ĸ��a��Ա��������
select ename
from emp
where ename like '__A%'

--6.��ѯ����10��20�Ų��������Ա�����������ű�š�
select  ename,deptno
from emp
where deptno not in (10,20)

--7.��ѯ���ź�Ϊ30��Ա������Ϣ���Ȱ����ʽ��������ٰ������������� 

select *
from emp 
where deptno=30
order by sal desc,ename asc
--8.��ѯû���ϼ���Ա��(�����Ϊ��)��Ա��������

select ename
from emp
where mgr is null
--9.��ѯ���ʴ��ڵ���4500���Ҳ���Ϊ10����20��Ա��������\���ʡ����ű�š�
select ename,sal ,deptno
from  emp
where sal>=4500 and deptno in (10,20)
