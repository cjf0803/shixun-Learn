--1.单行函数和多行函数的区别：
    --1.单行函数处理一条记录输出一个结果 to_date('2022-10-10','yyyy-mm-dd')
    --2.多行函数处理多条记录，输出一个结果 sum()求和
    
--2.单行函数的特征:
    --1.单行函数对单行操作
    --2.每行返回一个结果
    --3.有可能返回值与元数据类型不一致：to_date  to_char
    --4.单行函数可以写在SELECT、WHERE、ORDER BY子句中
    --5.有些函数有参数，有些是没有的。
    --6.函数可以嵌套    
    
--3.函数的分类:
    --1.字符函数
        --1.大小写转换函数
            --1.转大写
              select upper('hello')
              from dual;
              select upper(ename)
              from emp;
              
            --2.转小写
               select lower('HELLO')
               from dual;
               select lower(ename)
               from emp; 
               
            --3.将首字母转换成大写
              select initcap('hello')
              from dual;    
        
        --2.字符处理函数
             --1.concat:可以连接两个值
             select concat(ename,sal)
             from emp;
             select concat('hello',' word')
             from dual;
             --2.substr(column,n1,n2):
              --column:要；处理的数据
              --n1:指定截取的位置
              --n2:指定截取的长度
                 --1.当n1是正数的时候
              select substr('hello',2,2)
              from dual; 
                 --2.当没有第三个参数的时候.从制定位置截取到最后
              select substr('hello',2)
              from dual; 
                 --3.如果第二个参数为负数。那么从右往左数指定位置，向右截取指定长度
              select substr('hello',-3,2)
              from dual; 
             --3.length:返回字符的长度:
              select length('hello')
              from dual; 
              select length(ename)
              from emp; 
              
             --4.instr(s1,s2,n1,n2)
               --s1:要处理的数据
               --s2:是s1的子串 
               --n1:指定位置
               --n2:第n2次出现的位置
               select instr('hello','l',4,1)
               from dual; 
              --5.lpad:左填充
                  --返回s1被s2从右面填充到n1长度后的字符串
               select lpad('hello',10,'*')
               from dual; 
              --6.rpad:右填充
                select rpad('hello',10,'*')
                from dual;
              --7.trim:取出字符串头部或者尾部的字符:
                select trim('l' from 'hello')
                from dual; 
              --8.replace:替换指定的字符
                  select replace('hello','l','k')
                  from dual;            
                  
--练习2：
     --1.查询员工姓名中中包含大写或小写字母A的员工姓名。
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
           
     --2.查询部门编号为10或20，入职日期在81年5月1日之后，
     --并且姓名中包含大写字母A的员工姓名，员工姓名长度（提示，要求使用INSTR函数，不能使用like进行判断)
           select ename,length(ename) 长度
           from emp
           where deptno in(10,20)
           and hiredate>to_date('1981-5-1','yyyy-mm-dd')
           and instr(ename,'A',1)>0
           
     --3.查询每个职工的编号,姓名，工资
        --要求将查询到的数据按照一定的格式合并成一个字符串.
        --前10位：编号,不足部分用*填充,左对齐
        --中间10位：姓名，不足部分用*填充,左对齐
        --后10位：工资，不足部分用*填充,右对齐  
        select lpad(empno,10,'*'),lpad(ename,10,'*'),rpad(sal,10,'*')
        from emp;                
        
    --2.数值函数
         --1.round:四射五日到指定位置
         select round(45.926,2),round(45.926,1),round(45.926,0),round(45.926,-1)
         from dual;
         --2.trunc：截取指定长度的小数
         select trunc(45.926,2),trunc(45.926,1),trunc(45.926,0),trunc(45.926,-1)
         from dual;
         --mod:取余数
         select mod(8,3)
         from dual;
         
  --练习3：
        --1.写一个查询，分别计算100.456 四舍五入到小数点后第2位，第1位，整数位的值
          select round(100.456,2),round(100.456,1),round(100.456,0)
          from dual; 
        --2.写一个查询，分别计算100.456 从小数点后第2位，第1位，整数位截断的值
          select trunc(100.456,2),trunc(100.456,1),trunc(100.456,0)
          from dual;         
    
    --3.日期函数
        --1.数据库的日期格式：
           --RR格式：DD-MON-RR
           --YY格式：yyyy-mm-dd
        --2.oracle的默认格式:
            --RR格式
        --3.日期类型的计算：
           --员工日志到现在有多少个月，多少星期，多少天
           select (sysdate-hiredate)/30 月,(sysdate-hiredate)/7 星期,(sysdate-hiredate) 天
           from emp;
        --4.RR格式判断属于哪一个世纪
              --都是大取当前世纪
              -- 都是小取当前世纪
              --大小取下一个世纪
              --小大取上一个世纪 
       --5.sysdate:当前系统时间
            select sysdate
            from dual;       
                      
    
    --4.转换函数
    
    --5.通用函数    
