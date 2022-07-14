-- 그룹 나누기

SELECT AVG(SAL), DEPTNO
FROM EMP
WHERE COMM IS NOT NULL --WHERE절은 그룹핑 하기 전에 결과에 대한 조건임.
GROUP BY DEPTNO --부서코드가 똑같은 애들끼리 묶여서 3개의 그룹이 만들어짐. GROUP BY를 사용하면 AVG같은 집계함수만 사용 가능.
HAVING AVG(SAL) > 2000 AND DEPTNO < 15 -- 그룹핑 결과에 대한 조건 설정. 그룹핑에서의 WHERE과 같은 효과. 그룹핑 한 결과에 대해서 평균값이 2000이상인 것만 보겠다.
ORDER BY DEPTNO DESC
;

SELECT AVG(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO
;
-- SQL 실행순서 (작성 순서 지켜주기) 프웨구해슈오
/*
    1. FROM
    2. WHERE
    3. GROUP BY
    4. HAVING
    5. SELECT
    6. ORDER BY

*/