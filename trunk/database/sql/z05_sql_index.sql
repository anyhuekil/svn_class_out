/*
인덱스란?
데이터에 빠르게 접근하는 것을 도와 줌으로서 데이터베이스의 성능 향상에 도움을 주는 객체
1) 장점
- 검색 속도가 빨라진다.
- 시스템에 걸리는 부하를 줄여서 시스템 전체 성능을 향상시킨다.
2) 생성시점
- 설계(논리설계, 물리설계), 테이블 생성, 데이터 입력, 생성
- 운영단 데이터 부하시 생성
3) 사용 여부
- 테이블의 행의 수가 많은 때.(데이터 건수)
- where 문으로 index에 해당 컬럼이 많이 사용될 때.(조회문에 사용한다)
	ps) 테이블에 입력, 수정, 삭제가 자주 일어 나면 사용하지 않는 것일
		일반적이다.
- 검색 결과가 전체 데이터의 2~4%정도일 때.
	ex) 1000만건이 데이터가 있는 인사정보 있는 경우에 검색을 20~40만건  안에
	    데이터를 로딩해서 사용될 때 index를 처리함. 
4) 인덱의 단점
- 인덱스를 위한 추가 공간이 필요
- 인덱스를 생성하는데 시간이 걸린다.		
*/
/*
인덱스 생성 예제 만들기.
1. 복사테이블 만들기
create table EMP_IDX_EXP
AS
SELECT * FROM EMP;
2. 인덱스 처리할 컬럼 지정.
EMP_IDX_EXP에서 EMPNO를 INDEX로 지정
3. 인덱스 생성(해당테이블에 인덱스 매핑)
CREATE INDEX 인덱스이름
ON 생성할테이블명(생성대상컬럼)
CREATE INDEX INDEX_EMPNO_EMP_IDX_EXP
ON EMP_IDX_EXP(EMPNO);
*/
create table EMP_IDX_EXP
AS
SELECT * FROM EMP;

SELECT * FROM EMP_IDX_EXP;
-- EMP_IDX_EXP 테이블에 EMPNO에 INDEX를 설정한다.
CREATE INDEX INDEX_EMPNO_EMP_IDX_EXP
ON EMP_IDX_EXP(EMPNO);
-- 인덱스 삭제
-- DROP INDEX 인덱스이름.
DROP INDEX INDEX_EMPNO_EMP_IDX_EXP;
/*
확인예제..
DEPT 테이블 복사본 DEPT_IDX_EXP 만들고, 
인덱스 이름은 IDX_DEPTNO_DEPT로 해서 생성, 확인 및 삭제 처리..

*/
SELECT * FROM DEPT;
CREATE TABLE DEPT_IDX_EXP
AS SELECT * FROM DEPT;
CREATE INDEX IDX_DEPTNO_DEPT
ON DEPT_IDX_EXP(DEPTNO);
SELECT * FROM IDX_DEPTNO_DEPT;










