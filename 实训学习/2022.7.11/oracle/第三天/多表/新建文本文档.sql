 1.��ʾԱ��SMITH���������������ƣ�ֱ���ϼ����� 

SELECT  e.ename Ա������,dname ��������,m.ename ֱ���ϼ�����
FROM emp e,emp m, dept d
WHERE e.deptno=d.deptno
AND e.mgr= m.empno
AND e.ename='SMITH'

? 2.��ʾԱ���������������ƣ����ʣ����ʼ���Ҫ���� 

   �������4���� 

SELECT  e.ename Ա������,dname ��������,e.sal ����,s.grade ���ʼ���
FROM emp e, dept d,salgrade s
WHERE e.deptno=d.deptno
AND e.sal BETWEEN s.losal AND s.hisal
AND s.grade>4

? 3.��ʾԱ��KING��FORD�����Ա���������侭��������

SELECT e.ename Ա������,m.ename ��������
FROM emp e,emp m
WHERE e.mgr=m.empno
AND m.ename IN('KING','FORD') 

? 4.��ʾԱ���������μӹ���ʱ�䣬���������μӹ���ʱ�䣬 

   Ҫ��μ�ʱ��Ⱦ����硣 

 

SELECT e.ename Ա������, e.hiredate �μӹ���ʱ�� ,m.ename ��������, m.hiredate ����μӹ���ʱ��
FROM emp e,emp m
WHERE e.mgr=m.empno
AND e.hiredate< m.hiredate..