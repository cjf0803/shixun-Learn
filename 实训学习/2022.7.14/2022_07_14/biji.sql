--1.��ѯ������������2�Ĳ��ű�ţ��������ƣ�����������
select count(e.empno) ,e.deptno,d.dname
from emp e,dept d
where e.deptno=d.deptno
group by e.deptno,d.dname
having count(e.empno)>2
--2.��ѯ����ƽ�����ʴ���2000������������2�Ĳ��ű�ţ��������ƣ���������������ƽ�����ʣ������ղ���������������
select e.deptno,d.dname ,count(e.empno),avg(e.sal)
from emp e, dept d
where e.deptno=d.deptno
group by e.deptno,d.dname 
having avg(e.sal)>2000 and count(e.empno)>2
order by count(e.empno)


--1.дһ����ѯ����ʾ����Ա�����������ű�ţ��������ơ�
select e.ename,d.deptno,d.dname
from emp e,dept d
where e.deptno=d.deptno
--2.дһ����ѯ����ʾ���й�����CHICAGO���ҽ���Ϊ�յ�Ա�������������ص㣬����
select e.ename,d.loc,e.comm
from emp e, dept d
where e.deptno=d.deptno
and d.loc='CHICAGO' and e.comm is not null
group by e.ename

--3.дһ����ѯ����ʾ���������к���A�ַ���Ա�������������ص㡣
select e.ename,d.loc
from emp e, dept d
where e.deptno=d.deptno
and instr(e.ename,'A')>0

--1.��ѯ���й�����NEW YORK��CHICAGO��Ա��������Ա����ţ��Լ����ǵľ��������������š�

select e.ename,e.empno,m.ename,m.empno
from emp e,emp m,dept d
where e.mgr=m.empno and  e.deptno=d.deptno and d.loc in('NEW YORK','CHICAGO');


--2.����һ��Ļ����ϣ����û�о����Ա��King��������Ա���������
select e.ename,e.empno,m.ename,m.empno
from dept d
join emp e
on e.deptno=d.deptno 
left outer join emp m
on e.mgr=m.empno
where d.loc in('NEW YORK','CHICAGO') ;
order by e.empno


--��ҳ
select d.* 
from (
     select empno,ename,sal,hiredate,rownum r
     from emp 
)d
 where r>(2-1)*4 and r<=2*4
 
 
--�����order by, ��ôҪ��order by ��������� ����֤������ִ��
 select * from   
           (select d.*,rownum r from
             (select empno,ename,job,hiredate,sal
             from emp     
             order by sal) d )
         where r>5 and r<=10    
