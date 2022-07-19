--1.序列：sequence
   --1.按照一定顺序自动增加的数据库对象
   --2.通常可以使用序列自动地生成主键值
   --3.创建序列：
      create sequence test_seq
        start with 10
        increment by 1
        maxvalue 100
        minvalue 9
        cache 10;
    --4.序列的两个属性：
       --currval:查询序列的当前值
         --1.查询序列值
           select test_seq.currval from dual;
         --当序列没有产生下一个值时，是不能查询当前值的  
       --nextval:让序列产生下一个值  
           select test_seq.nextval from dual;  
     --5.添加数据时让主键自增
           drop table dossier;
           create table dossier(
              id number(4) primary key,
              name varchar2(10),
              age number(4)
           
           ) 
           --添加数据实现主键自增:
           insert into dossier(id,name,age)
           values(test_seq.nextval,'张三',21); 
           --查询数据:
           select * from dossier;
     --6.全部使用默认值
         create sequence test_seq2; 
         
     --7.删除序列:
         drop sequence test_seq;   
         
            
              
           
                
        
