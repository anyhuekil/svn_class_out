-- ����
-- sal�� �����̶�� �� ��, �̴� �޿���(1/13)�� ó���Ͻÿ�, �� �̴��� ���ʽ��� �ִ� ���Դϴ�.
-- ��³��� : ���, ����, �̴ޱ޿�, ���ʽ�, �ѱ޿���(�޿��� �ѱ޿����� 10������ �ݿø�ó���Ѵ�.)

select empno, round(sal,-1), sal/13, nvl(comm,0), round((sal+nvl(comm,0)),-1) from emp;

/*
���� 
sal�� ��������
1000�̸�			-10%���ʽ�
1000~2000�̸�		-20%���ʽ�
2000~3000�̸�		-30%���ʽ�
4000~5000�̸�		-40%���ʽ�
5000~�̻�			-50%���ʽ�
�����ϱ�� �ߴ�. �Լ��� Ȱ���ؼ� �Ʒ� ������ ó���Ͻÿ�
��� �̸� ���� ���ʽ�(%) ���ʽ�
*/
select empno, ename, sal, (trunc(sal/1001,0)+1)*10||'%' �������غ��ʽ� ,nvl(comm,0) from emp;

/*
����
����� �μ��������� 1���� 2������ ����� ü����ȸ�� �ϱ�� �ߴ�.
�μ���ȣ�� 10,30 ==> 1��
�μ���ȣ�� 20,40 ==> 2��
���� ������ ������ ���� ����ϼ���
�μ���ȣ �����ȣ �̸� ����
*/
select deptno , empno, ename, deptno from emp 
where mod(deptno,40)=10 or mod(deptno,40)=30;

select deptno, empno, ename from emp
where mod(deptno,40)=20 or mod(deptno,40)=40;
 
 -- ����) substr�� Ȱ�� �Ͽ�  JOB�� MAN���� ������ �����͸� ����ϼ���!!
 select * from emp
 where substr(job,1,length(job)) like'%MAN'; 