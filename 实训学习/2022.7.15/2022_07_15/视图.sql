--1.��ͼ��
    --1.��һ�������Ĳ�ѯ�����ڸı�������ݵ���ʾ��ͨ����ͼ�ܼ򻯲�ѯ�����ʷ�ʽ�����ͬ
--2.Ϊʲôʹ����ͼ:
    --1.���������û������ݿ��ķ���,��Ϊ��ͼ������ѡ���Ե���ʾ���ݿ���һ����
    --2.����ʵ�ָ��ӵĲ�ѯ
    --3.������ͬ�����ݿ��Բ�����ͬ����ͼ
    
     --1.����һ����ͼv_emp10��ͨ������ͼֻ�ܲ鿴10�Ų��ŵ�Ա����ţ�Ա��������ְλ
        create view v_emp10
        as
        select empno,ename,job
        from emp
        where deptno=10;
     --2.��ѯ��ͼ:
        select * from v_emp10; 
        
 --��ϰ1��
    --1.����һ����ͼ��ͨ������ͼ���Բ�ѯ��������2000-5000�ڲ��������а�����A��Ա����ţ����������ʡ�
       create view v_emp11
       as
       select empno,ename,sal
       from emp
       where sal between 2000 and 5000
       and ename like '%A%'; 
       --��ѯ��ͼ
       select * from v_emp11; 
       
 --3.ʹ�ñ���������ͼ:
       create view v_emp12
       as
       select empno ���,ename ����,sal ����
       from emp
       where deptno=90; 
       --��ѯ��ͼ
       select * from v_emp12;
 --4.����һ�����ӵ���ͼ
       --1.����һ����ͼ��ͨ������ͼ���Բ鿴ÿ�����ŵ����ƣ���͹��ʣ���߹��ʣ�ƽ������
       create view v_emp13
         (name,minsal,maxsal,avgsal)
       as
       select d.dname,min(e.sal),max(e.sal),avg(e.sal)
       from emp e,dept d
       where e.deptno=d.deptno
       group by d.dname
       
       --��ѯ��ͼ
       select * from v_emp13;
               
       
       
       
       
       
       
       
       
       
               
       
         
        
                  
