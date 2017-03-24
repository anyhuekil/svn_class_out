/*
not null ��������
�ش� �÷��� ���� �ݵ�� �ԷµǾ����, ó���ǰԲ� ����.. 
ex) a01_not_nullExp ���̺� 
	 empno, ename�� not null ������ ���̺�
	a02_nullExp ���̺�
	 empno, ename  not null�� �������� �ʴ� ���̺�
*/
create table a01_not_nullExp(
	empno number not null, --���������� not null ����
	ename varchar2(20) not null, --���������� not null ����
	job varchar2(20)
);
create table a02_nullExp(
	empno number,
	ename varchar2(20), 
	job varchar2(20)
);
--  ���̺��� ����� �����͸� �Է�, ������ �� � ������ �ִ��� Ȯ��
select * from a01_not_nullExp;
select * from a02_nullExp;
-- 1) �����͸� �Է½�, ������ null�� �Է�.
insert into a01_not_nullExp(job) values('���α׷���1'); -- �������� �����߻�
-- �ݵ�� empno, ename�� �Է��Ͽ��� �Ѵ�. 
insert into a01_not_nullExp(empno, ename, job) 
          values(7000,'ȫ�浿','���α׷���1');  -- ��ü �Է½� �����߻����� ����..
insert into a01_not_nullExp(empno, job) 
          values(7001,'���α׷���1');  -- �������� �����߻�(1���� �������ǿ� �մ�ġ ������)
insert into a01_not_nullExp(empno, ename) 
          values(7002,'�ű浿');  -- �����Է�, job�� null�� ���������� ���� �ʾұ⿡

insert into a02_nullExp(job) values('���α׷���2');
-- 2) ������ �Է½�, ����� null�� �Է�..

