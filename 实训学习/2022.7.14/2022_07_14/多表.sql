--1.�������:
    --�������ڶ����֮��ͨ��һ��������������ʹ��֮�䷢�������������ܴӶ����֮���ȡ����
--2.������ӵ�����:
   --1.�� WHERE�Ӿ�����д��������
   --2.����ڶ�����г�����ͬ������������Ҫʹ�ñ�����Ϊ���Ըñ��������ǰ׺
   --3. N��������ʱ��������ҪN��1����������
   
--3.�������ͣ�
    --1.��ֵ����
    
    --2.�ǵ�ֵ����
    
    --3.�ⲿ����
    
    --4.�ڲ�����
    
--4.�ѿ�������
    --1.��һ�����е������к͵ڶ������е������ж���������
    --2.��û�й�������������²���������
    select  e.empno,e.ename,d.dname
    from emp e,dept d 
    
--5.��ֵ���ӣ�
    --��������ͨ���ֶ���ͬ��ֵ�����Ĺ�������
    --��ѯԱ�����������ű�ţ���������
    select e.ename,e.deptno,d.deptno,d.dname
    from emp e,dept d
    where e.deptno=d.deptno  
    --����ֻ���ѯ�����ص���NEW YORK��Ա����ţ����������ű�ţ������ص�
    select e.empno,e.ename,d.deptno,d.loc
    from emp e,dept d
    where e.deptno=d.deptno
    and d.loc='NEW YORK' ;
    
--5.�ǵ�ֵ���ӣ�
    select * from salgrade;    
   --��ѯÿ��Ա�������������ʣ����ʵȼ�
     select e.ename,e.sal,s.grade
     from emp e,salgrade s
     where e.sal between s.losal and s.hisal;
   --��ѯÿ��Ա���ı�ţ����������ʣ����ʵȼ������ڹ������У����չ��ʵȼ�������������
     select e.empno,e.ename,e.sal,s.grade
     from emp e,dept d,salgrade s
     where e.deptno=d.deptno
     and e.sal between s.losal and s.hisal
     order by s.grade;
     
--6.�ⲿ����:(+)
     --+�Աߵı�ʱ��׼����׼���е�����ȫ����ʾ��(+)һ�ߵı����׼ƥ�䣬ƥ�䲻����null���
       --��ѯ���й�Ա���������ű�ţ��������ƣ�����û��Ա���Ĳ���ҲҪ��ʾ����
       --���ű�Ϊ��׼��
       select e.ename,e.deptno,d.dname
       from emp e,dept d  
       where e.deptno(+)=d.deptno;
       
--7.������:
      --ͬһ�ű������
      --��������:Ա���ľ�����=�����Ա�����
      
      select * from emp
      --��ѯԱ�������ľ�������
      select worker.ename,manager.ename
      from emp worker,emp manager
      where worker.mgr=manager.empno; 
      
--��ϰ3��
      --1.��ѯ���й�����NEW YORK��CHICAGO��Ա��������Ա����ţ��Լ����ǵľ���������������       
          select worker.eanme,worker.empno,manager.ename,manager.empno
          from emp worker ,emp manager,dept d
          where worker.mgr=manager.empno
          and worker.deptno=d.deptno
          and d.loc in('NEW YORK','CHICAGO');
      --2.����һ��Ļ����ϣ����û�о����Ա��King��������Ա���������
          select worker.eanme,worker.empno,manager.ename,manager.empno
          from emp worker ,emp manager,dept d
          where worker.mgr=manager.empno(+)
          and worker.deptno=d.deptno
          
      --3.��ѯ����Ա����ţ��������������ƣ�����û�в��ŵ�Ա��ҲҪ��ʾ����
          select e.empno,e.ename,d.dname
          from emp e,dept d
          where e.deptno=d.deptno(+) 
          
          
--7.�������ӣ�cross join
    --������ѿ�����
     select e.ename,e.deptno,d.deptno
     from emp e cross join dept d 
     
--8.��Ȼ���ӣ�NATURAL JOIN
    --��������Ҫ����ͬ���ֶΣ�������������һ��
    --��ֵ����
    --��ͬ���ֶβ���ʹ�ñ�����Ϊǰ׺
    select e.ename,deptno,d.dname
    from emp e natural join dept d;
    
--9.using���ӣ�
     --����ͨ��һ�����߼�����ͬ���ֶ���Ϊ��������
     select e.ename,d.dname
     from emp e join dept d using(deptno) 
     
--10.on�Ӿ䣺
     --����ͨ��onָ����������
     --������������д��where�Ӿ���
     --onҪ��joinһ��ʹ��
     select e.ename,e.deptno,d.deptno,d.dname
     from emp e join dept d
     on(e.deptno=d.deptno)
     where e.sal>2000; 
     
--11.on�Ӿ��������ű�
     select w.empno,d.dname,m.ename
     from emp w
     join dept d
     on(w.deptno=d.deptno)
     join emp m
     on(w.mgr=m.empno); 
     
--12.�������ӣ�
     --������߱�Ϊ��׼����׼������ȫ����ʾ���ұ߱����߱�ƥ�䣬ƥ�䲻�� ��null��䡣
     select e.ename,e.deptno,d.deptno,d.dname
     from emp e left outer join dept d
     on(e.deptno=d.deptno);
     
--13.������:
      --������߱�Ϊ��׼����׼������ȫ����ʾ���ұ߱����߱�ƥ�䣬ƥ�䲻�� ��null��䡣     
       select e.ename,e.deptno,d.deptno,d.dname
     from emp e left  join dept d
     on(e.deptno=d.deptno); 
     
--14.��������
      --�����ұ߱�Ϊ��׼����׼���е�����ȫ����ʾ�������ұ�ƥ�䣬ƥ�䲻����null���
      select e.ename,e.deptno,d.deptno,d.dname
      from emp e right outer join dept d
      on(e.deptno=d.deptno); 
      
--15.�����ӣ�
      --�����ұ߱�Ϊ��׼����׼���е�����ȫ����ʾ�������ұ�ƥ�䣬ƥ�䲻����null���                       
     select e.ename,e.deptno,d.deptno,d.dname
      from emp e right  join dept d
      on(e.deptno=d.deptno); 
      
--16.ȫ�����ӣ�
      --�ڵ�ֵ���ӵĻ����ϣ��������е�����ȫ����ʾ��
      select e.empno,e.deptno,d.deptno,d.dname
      from emp e full outer join dept d
      on(e.deptno=d.deptno);      
     
     
     
     
     
     
     
     
     
     
     
     
       
                   
          
          
          
          
          
          
          
          
          
          
          
          
          
          
             
     
          
          
                   
    
             
