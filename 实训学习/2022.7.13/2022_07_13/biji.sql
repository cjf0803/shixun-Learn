select upper('hello')
from dual;

select upper(ename)
from emp;

SELECT CONCAT(UPPER(lpad(ename,1)),LOWER(SUBSTR(ename,2,9))) Ա������ ,LENGTH(ename) as �������� from emp
WHERE lpad(ename,1) IN('J','A','M')
ORDER BY ename ASC;
--��ѯԱ���������а�����д��Сд��ĸA��Ա��������
SELECT ename FROM emp
WHERE instr(ename,'a')>0 OR instr(ename,'A')>0

--��ѯ���ű��Ϊ10��20����ְ������81��5��1��֮�󣬲��������а�����д��ĸA��Ա��������Ա���������ȣ���ʾ��Ҫ��ʹ��INSTR����������ʹ��like�����ж�)

select ename,length(ename)
from emp
where deptno in(10,20) and hiredate>'1-5��-1981' and instr(ename,'A')>0
select * from emp


--��ѯÿ��ְ���ı��,����������
--Ҫ�󽫲�ѯ�������ݰ���һ���ĸ�ʽ�ϲ���һ���ַ���.
--ǰ10λ�����,���㲿����*���,�����
--�м�10λ�����������㲿����*���,�����
--��10λ�����ʣ����㲿����*���,�Ҷ���
select rpad(empno,10,'*')||rpad(ename,10,'*')||lpad(sal,10,'*')
from emp

select* from emp

select ename,sal,job,months_between(sysdate,hiredate) ��
from emp


select hiredate ,extract(day from hiredate)
from emp


--1.��ѯ��������ǰʱ��
select sysdate
from dual;
--2.��ѯ����10,20��Ա����ֹ��2000��1��1�գ������˶��ٸ��£���ְ���·ݡ�(��ʾ��ʹ��months_between,extract)

select ename,months_between('1-1��-00'��hiredate),extract(month from hiredate) month
from emp
where deptno in (10,20)
--3.���Ա��������6���£���ѯְλ����MANAGER��Ա����������ְ���ڣ�ת�����ڣ���ְ���ں�ĵ�һ������һ,��ְ���µ����һ�����ڡ�����ʾ��ʹ��add_months,next_day,last_day)
select ename,hiredate ��ְ���� ,add_months(hiredate,6) ת������,next_day(hiredate,'����һ') ��ְ���ں�ĵ�һ������һ�� last_day(hiredate) ��ְ���µ����һ������
from emp
where job <>'MANAGER'

select to_char(hiredate,'yyyy') from emp
select to_char(hiredate,'mm') from emp
select to_char(hiredate,'day') from emp


--��ֵת�����ַ�
select to_char(sal,'$9,999')
from emp

select to_date('2022-10-10 14:10:10','yyyy-mm-dd hh24:mi:ss')
from emp

--1.��ʾ������ϵͳ��ǰʱ�䣬��ʽΪ2007-10-12 17:11:11(��ʾ��ʹ��to_char����)
select to_char(sysdate,'yyyy-mm-dd hh24:mi:ss')
from dual
--2.��ʾename��hiredate �� ��Ա��ʼ�����������ڼ����б�ǩDAY(��ʾ��ʹ��to_char����)
select ename,hiredate,to_char(hiredate,'Day') day 
from emp
--3.��ѯԱ�����������ʣ���ʽ���Ĺ��ʣ���999,999.99�� (��ʾ��ʹ��to_char����)
select ename,sal,to_char(sal,'$9,999')
from emp
--4.���ַ���2015-3��-18 13:13:13 ת�������ڸ�ʽ���������ϵͳ��ǰʱ���������졣 (��ʾ��ʹ��to_date����)
select round((sysdate-to_date('2015-03-18 13:13:13 ','yyyy-mm-dd hh24:mi:ss')),0) 
from dual

--1.��ѯÿ�����ŵĲ��ű�ţ��������ƣ�������������߹��ʣ���͹��ʣ������ܺͣ�ƽ�����ʡ�
select e.deptno , d.dname ,count(e.empno),max(e.sal),min(e.sal),sum(e.sal) ,avg(e.sal)
from emp e,dept d
where e.deptno=d.deptno
group by e.deptno,d.dname
--2.��ѯÿ�����ţ�ÿ����λ�Ĳ��ű�ţ��������ƣ���λ���ƣ�������������߹��ʣ���͹��ʣ������ܺͣ�ƽ�����ʡ�
select e.deptno,e.job,d.dname,count(e.empno),max(e.sal),min(e.sal),sum(e.sal) ,avg(e.sal)
from emp e,dept d
where e.deptno=d.deptno
group by e.deptno,e.job,d.dname
