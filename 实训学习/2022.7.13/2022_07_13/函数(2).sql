--1.���к����Ͷ��к���������
    --1.���к�������һ����¼���һ����� to_date('2022-10-10','yyyy-mm-dd')
    --2.���к������������¼�����һ����� sum()���
    
--2.���к���������:
    --1.���к����Ե��в���
    --2.ÿ�з���һ�����
    --3.�п��ܷ���ֵ��Ԫ�������Ͳ�һ�£�to_date  to_char
    --4.���к�������д��SELECT��WHERE��ORDER BY�Ӿ���
    --5.��Щ�����в�������Щ��û�еġ�
    --6.��������Ƕ��    
    
--3.�����ķ���:
    --1.�ַ�����
        --1.��Сдת������
            --1.ת��д
              select upper('hello')
              from dual;
              select upper(ename)
              from emp;
              
            --2.תСд
               select lower('HELLO')
               from dual;
               select lower(ename)
               from emp; 
               
            --3.������ĸת���ɴ�д
              select initcap('hello')
              from dual;    
        
        --2.�ַ�������
             --1.concat:������������ֵ
             select concat(ename,sal)
             from emp;
             select concat('hello',' word')
             from dual;
             --2.substr(column,n1,n2):
              --column:Ҫ�����������
              --n1:ָ����ȡ��λ��
              --n2:ָ����ȡ�ĳ���
                 --1.��n1��������ʱ��
              select substr('hello',2,2)
              from dual; 
                 --2.��û�е�����������ʱ��.���ƶ�λ�ý�ȡ�����
              select substr('hello',2)
              from dual; 
                 --3.����ڶ�������Ϊ��������ô����������ָ��λ�ã����ҽ�ȡָ������
              select substr('hello',-3,2)
              from dual; 
             --3.length:�����ַ��ĳ���:
              select length('hello')
              from dual; 
              select length(ename)
              from emp; 
              
             --4.instr(s1,s2,n1,n2)
               --s1:Ҫ���������
               --s2:��s1���Ӵ� 
               --n1:ָ��λ��
               --n2:��n2�γ��ֵ�λ��
               select instr('hello','l',4,1)
               from dual; 
              --5.lpad:�����
                  --����s1��s2��������䵽n1���Ⱥ���ַ���
               select lpad('hello',10,'*')
               from dual; 
              --6.rpad:�����
                select rpad('hello',10,'*')
                from dual;
              --7.trim:ȡ���ַ���ͷ������β�����ַ�:
                select trim('l' from 'hello')
                from dual; 
              --8.replace:�滻ָ�����ַ�
                  select replace('hello','l','k')
                  from dual;            
                  
--��ϰ2��
     --1.��ѯԱ���������а�����д��Сд��ĸA��Ա��������
           select ename
           from emp
           where ename in('A','a');
           
           select ename
           from emp
           where instr(ename,'A',1)>0
           or instr(ename,'a',1)>0;
           
           select ename
           from emp
           where ename like '%A%'
           or ename like '%a%';
           
     --2.��ѯ���ű��Ϊ10��20����ְ������81��5��1��֮��
     --���������а�����д��ĸA��Ա��������Ա���������ȣ���ʾ��Ҫ��ʹ��INSTR����������ʹ��like�����ж�)
           select ename,length(ename) ����
           from emp
           where deptno in(10,20)
           and hiredate>to_date('1981-5-1','yyyy-mm-dd')
           and instr(ename,'A',1)>0
           
     --3.��ѯÿ��ְ���ı��,����������
        --Ҫ�󽫲�ѯ�������ݰ���һ���ĸ�ʽ�ϲ���һ���ַ���.
        --ǰ10λ�����,���㲿����*���,�����
        --�м�10λ�����������㲿����*���,�����
        --��10λ�����ʣ����㲿����*���,�Ҷ���  
        select lpad(empno,10,'*'),lpad(ename,10,'*'),rpad(sal,10,'*')
        from emp;                
        
    --2.��ֵ����
         --1.round:�������յ�ָ��λ��
         select round(45.926,2),round(45.926,1),round(45.926,0),round(45.926,-1)
         from dual;
         --2.trunc����ȡָ�����ȵ�С��
         select trunc(45.926,2),trunc(45.926,1),trunc(45.926,0),trunc(45.926,-1)
         from dual;
         --mod:ȡ����
         select mod(8,3)
         from dual;
         
  --��ϰ3��
        --1.дһ����ѯ���ֱ����100.456 �������뵽С������2λ����1λ������λ��ֵ
          select round(100.456,2),round(100.456,1),round(100.456,0)
          from dual; 
        --2.дһ����ѯ���ֱ����100.456 ��С������2λ����1λ������λ�ضϵ�ֵ
          select trunc(100.456,2),trunc(100.456,1),trunc(100.456,0)
          from dual;         
    
    --3.���ں���
        --1.���ݿ�����ڸ�ʽ��
           --RR��ʽ��DD-MON-RR
           --YY��ʽ��yyyy-mm-dd
        --2.oracle��Ĭ�ϸ�ʽ:
            --RR��ʽ
        --3.�������͵ļ��㣺
           --Ա����־�������ж��ٸ��£��������ڣ�������
           select (sysdate-hiredate)/30 ��,(sysdate-hiredate)/7 ����,(sysdate-hiredate) ��
           from emp;
        --4.RR��ʽ�ж�������һ������
              --���Ǵ�ȡ��ǰ����
              -- ����Сȡ��ǰ����
              --��Сȡ��һ������
              --С��ȡ��һ������ 
       --5.sysdate:��ǰϵͳʱ��
            select sysdate
            from dual;       
                      
    
    --4.ת������
    
    --5.ͨ�ú���    
