/*
not null 제약조건
해당 컬럼의 값이 반드시 입력되어야지, 처리되게끔 설정.. 
ex) a01_not_nullExp 테이블에 
	 empno, ename에 not null 설정한 테이블
	a02_nullExp 테이블에
	 empno, ename  not null을 설정하지 않는 테이블
*/
create table a01_not_nullExp(
	empno number not null, --제약조건을 not null 설정
	ename varchar2(20) not null, --제약조건을 not null 설정
	job varchar2(20)
);
create table a02_nullExp(
	empno number,
	ename varchar2(20), 
	job varchar2(20)
);
--  테이블을 만들고 데이터를 입력, 수정할 때 어떤 영향이 있는지 확인
select * from a01_not_nullExp;
select * from a02_nullExp;
-- 1) 데이터를 입력시, 묵시적 null값 입력.
insert into a01_not_nullExp(job) values('프로그래머1'); -- 제약조건 에러발생
-- 반드시 empno, ename을 입력하여야 한다. 
insert into a01_not_nullExp(empno, ename, job) 
          values(7000,'홍길동','프로그래머1');  -- 전체 입력시 에러발생하지 않음..
insert into a01_not_nullExp(empno, job) 
          values(7001,'프로그래머1');  -- 제약조건 에러발생(1개라도 제약조건에 합당치 않을때)
insert into a01_not_nullExp(empno, ename) 
          values(7002,'신길동');  -- 정상입력, job은 null라도 조건제약을 하지 않았기에

insert into a02_nullExp(job) values('프로그래머2');
-- 2) 데이터 입력시, 명시적 null값 입력..

