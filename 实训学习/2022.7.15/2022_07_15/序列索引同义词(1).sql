--1.���У�sequence
   --1.����һ��˳���Զ����ӵ����ݿ����
   --2.ͨ������ʹ�������Զ�����������ֵ
   --3.�������У�
      create sequence test_seq
        start with 10
        increment by 1
        maxvalue 100
        minvalue 9
        cache 10;
    --4.���е��������ԣ�
       --currval:��ѯ���еĵ�ǰֵ
         --1.��ѯ����ֵ
           select test_seq.currval from dual;
         --������û�в�����һ��ֵʱ���ǲ��ܲ�ѯ��ǰֵ��  
       --nextval:�����в�����һ��ֵ  
           select test_seq.nextval from dual;  
     --5.�������ʱ����������
           drop table dossier;
           create table dossier(
              id number(4) primary key,
              name varchar2(10),
              age number(4)
           
           ) 
           --�������ʵ����������:
           insert into dossier(id,name,age)
           values(test_seq.nextval,'����',21); 
           --��ѯ����:
           select * from dossier;
     --6.ȫ��ʹ��Ĭ��ֵ
         create sequence test_seq2; 
         
     --7.ɾ������:
         drop sequence test_seq;   
         
            
              
           
                
        
