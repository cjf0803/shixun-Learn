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
                  
        
    --2.数值函数
    
    --3.日期函数
    
    --4.转换函数
    
    --5.通用函数    
