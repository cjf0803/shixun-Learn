 1.显示员工SMITH的姓名，部门名称，直接上级名称 

SELECT  e.ename 员工姓名,dname 部门名称,m.ename 直接上级名称
FROM emp e,emp m, dept d
WHERE e.deptno=d.deptno
AND e.mgr= m.empno
AND e.ename='SMITH'

? 2.显示员工姓名，部门名称，工资，工资级别，要求工资 

   级别大于4级。 

SELECT  e.ename 员工姓名,dname 部门名称,e.sal 工资,s.grade 工资级别
FROM emp e, dept d,salgrade s
WHERE e.deptno=d.deptno
AND e.sal BETWEEN s.losal AND s.hisal
AND s.grade>4

? 3.显示员工KING和FORD管理的员工姓名及其经理姓名。

SELECT e.ename 员工姓名,m.ename 经理姓名
FROM emp e,emp m
WHERE e.mgr=m.empno
AND m.ename IN('KING','FORD') 

? 4.显示员工姓名，参加工作时间，经理名，参加工作时间， 

   要求参加时间比经理早。 

 

SELECT e.ename 员工姓名, e.hiredate 参加工作时间 ,m.ename 经理姓名, m.hiredate 经理参加工作时间
FROM emp e,emp m
WHERE e.mgr=m.empno
AND e.hiredate< m.hiredate..