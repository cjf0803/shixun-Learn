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
                  
        
    --2.��ֵ����
    
    --3.���ں���
    
    --4.ת������
    
    --5.ͨ�ú���    
