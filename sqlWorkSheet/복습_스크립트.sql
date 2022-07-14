/*

    INSTR:  지정한 위치부터 지정된 숫자 번째까지 나타나는 문자의 시작위치
    LPAD. RAD:  임의의 문자를 왼쪽 또는 오른쪽에 덧붙여줌
    LTRIM, RTRIM:  공백제거
    SUBSTR: 지정한 위치부터 지정한 갯수만큼 문자열 추출
    LOWER ,UPPER, INICAP
    CONCAT : 문자열 합치기
    REPLACE :변경하려는 문자 변경
    
    
    ABS
    MOD
    ROUND
    FLOOR
    CEIL
    TRUNC
    
    MONTH_BETWEEN
    ADD_MONTHS
    
    EXTRACT(YEAR|MONTH|DAY FORM DATE) :

*/
SELECT EXTRACT(DAY FROM SYSDATE)FROM DUAL;

/*
    문자열 :TO_CHAR
    숫자 : TO_NUMBER
    날짜 : TO_DATE
*/

SELECT SYSDATE FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') FROM DUAL;

SELECT TO_DATE('20220712') FROM DUAL;

/*
    NULL 처리 함수
        NVL
        NVL2
        DECODE
        CASE ~ WHEN ~ THEN ~ ELSE~ END
        
*/

--EMPLOYEE 테이블에서 사원명, 급여, 보너스, 보너스 포함 월급 조회
SELECT 
    EMP_NAME 사원명
    , SALARY 급여
    , SALARY*NVL(BONUS, 0) 보너스
    , NVL(SALARY+(SALARY*BONUS), SALARY) 총급여
    , SALARY + SALARY*NVL(BONUS, 0) 총급여
FROM EMPLOYEE
;

-- 보너스 동결 // 기존 보너스 받던 사원은 0.1, 나머지는 0
SELECT 
    EMP_NAME 사원명
    , NVL(BONUS, 0) 기존보너스율
    , NVL2(BONUS, 0.1, 0) 변경된보너스율
    , (SALARY+SALARY*NVL2(BONUS, 0.1, 0))*12 연봉 --(급여+보너스) *12
FROM EMPLOYEE
;


SELECT *
FROM EMPLOYEE
WHERE EMP_ID < 210
ORDER BY EMP_NAME ASC
NULLS LAST
;

--EMPLOYEE 테이블에서 사번, 사원명, 주민번호, 성별 조회
--DECODE
SELECT 
    DEPT_CODE
    , EMP_NAME
    , EMP_NO
    , SUBSTR(EMP_NO, 8, 1) 뒷자리첫번째숫자
    , DECODE(SUBSTR(EMP_NO, 8, 1), 1, '남자', 2, '여자') 성별
FROM EMPLOYEE
;

--CASE
SELECT 
    DEPT_CODE
    , EMP_NAME
    , EMP_NO
    , SUBSTR(EMP_NO, 8, 1) 뒷자리첫번째숫자
    , CASE 
        WHEN SUBSTR(EMP_NO, 8, 1) = 1 THEN '남자'
        WHEN SUBSTR(EMP_NO, 8, 1) = 2 THEN '여자'
        ELSE '남자도여자도아님'
        END 성별
FROM EMPLOYEE
;


/*
    그룹함수
        SUM
        AVG
        MIN
        MAX
        COUNT
        
*/

SELECT SUM(SALARY)
FROM EMPLOYEE
;

/*
    GROUP BY
    HAVING
*/

SELECT DEPT_CODE, AVG(SALARY) 
FROM EMPLOYEE
GROUP BY DEPT_CODE
HAVING AVG(SALARY) > 3000000
;

--각 부서별 그룹으로 묶어서 부서별 급여 총 합
SELECT DEPT_CODE 부서명, SUM(SALARY) 부서급여총합
FROM EMPLOYEE
GROUP BY DEPT_CODE
;

--전체 사원 수 조회
SELECT COUNT(*)
FROM EMPLOYEE
;

--각 부서별 사원 수 조회
SELECT DEPT_CODE, COUNT(*)
FROM EMPLOYEE
GROUP BY DEPT_CODE
;

--각 부서별로 보너스 받는 사원 수 (GROUP함수는 NULL 값을 제외하고 카운트 한다.))
SELECT DEPT_CODE, COUNT(BONUS)
FROM EMPLOYEE
GROUP BY DEPT_CODE
;

/*
    집계함수
        
        CUBE
        ROLLUP
        GROUPING SETS
        
        GROUPING
*/
SELECT
    DEPT_CODE
    , GROUPING(DEPT_CODE)
    , SUM(SALARY)
    , AVG(SALARY)
FROM EMPLOYEE
GROUP BY CUBE(DEPT_CODE)
;

/*
    집합연산자
        UNION
        MINUS
        UNION ALL
        INTERSECT
*/

/*
    JOIN
        INNER JOIN
        OUTER JOIN
            -LEFT, RIGHT, FULL
        CROSS JOIN
        
        NON EQUAL JOIN
        
        SELF JOIN
*/

-- 사원의 테이블의 부서코드를 이용해서, 부서이름도 함께 출력
--EMPLOYEE, DEPARTMENT JOIN 해서  모든 칼럼 조회
SELECT A.EMP_NAME, A.DEPT_CODE, B.DEPT_TITLE
FROM EMPLOYEE A
FULL OUTER JOIN DEPARTMENT B ON A.DEPT_CODE = B.DEPT_ID
;

--NON EQUAL JOIN(비등가 조인)
SELECT E.EMP_NAME, E.SALARY, S.SAL_LEVEL, S.MAX_SAL, S.MIN_SAL
FROM EMPLOYEE E 
--JOIN SAL_GRADE S ON (E.SALARY BETWEEN S.MIN_SAL AND S.MAX_SAL)
JOIN SAL_GRADE S ON (E.SALARY >S.MIN_SAL)
ORDER BY EMP_NAME
;
