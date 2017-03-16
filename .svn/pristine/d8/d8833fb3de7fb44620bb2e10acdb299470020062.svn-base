/* 숙제1) 6개월의 인턴기간에는 급여의 70%만 지급하기로 했다. 단 사원의 인턴기간 만료 시점을 출력하고 6개월간의 급여의 총합을 계산하세요.
      월급여 - SAL/13, 
	 인턴기간 - 월급여의 70%,
	 인턴기간월급여총액- 인턴기간 6개월간 급여 총액을 10단위 절삭해서 출력
	 출력폼 : 사원번호     사원명    입사일     인턴기간만료시점    인턴기간월급여
*/
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 6) "인터만료시점", TRUNC(SAL/13*0.7*6,-1) "인턴기간월급여" FROM EMP;

/* 숙제2) 급여 계산.. 3단계 급여일을 나누어서 출력
     1단계 당월20일, 2단계 당월 마지막날, 3단계 다음달 10일
        사원 입사일 첫 월급1 첫월급2 첫월급3
*/
SELECT HIREDATE, ADD_MONTHS(LAST_DAY(HIREDATE),-1)+20 "첫월급1", 
	LAST_DAY(HIREDATE) "첫월급2", 
	LAST_DAY(HIREDATE)+10 "첫월급3"
	FROM EMP;
--위의 경우 2월22일에 입사해도 2월20일에 첫월급을 받는 걸로 되어 있어 아래와 같이 바꾸었다. 
-- 아래의 경우 2월 21일에 입사한 사람은 다음달 20일인 3월20일에 월급을 받는다.
-- SELECT HIREDATE, ROUND(HIREDATE-5, 'MONTH') FROM EMP;이용
SELECT HIREDATE, ADD_MONTHS(LAST_DAY(ROUND(HIREDATE-5, 'MONTH')),-1)+20 "첫월급1", 
	LAST_DAY(ROUND(HIREDATE-5, 'MONTH')) "첫월급2", 
	LAST_DAY(ROUND(HIREDATE-5, 'MONTH'))+10 "첫월급3"
	FROM EMP;

/**
	숙제3 : 근무개월수에 따른 차등 보너스 지급
	가장 오래된 개월~가장 최근에 입사한 개월수
	1/3 = 30%,  1/3=20%, 1/3 = 10% (연봉기준)
	 사원, 입사일, 현재날짜(@@/@@/@@ AM @@시@@분@@초), 근무개월수,
**/
SELECT ENAME, HIREDATE, 
	TO_CHAR(SYSDATE,'"현재날짜("YY"/"MM"/"DD AM" "HH"시"mm"분"ss"초)"') 입사일,
	TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) 근무개월수
	FROM EMP;