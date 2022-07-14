-- 집계

SELECT DEPTNO, JOB
FROM EMP
GROUP BY DEPTNO, JOB
;

-- GROUP BY
SELECT DEPTNO, JOB, SUM(SAL) 총급여
FROM EMP
GROUP BY DEPTNO, JOB
;

-- ROLLUP -- 총계와 소계를 같이 얻기 위함 (지워간다 -> 처음엔 2개 모두 통계 그 다음엔 1개만 가지고 통계 그 다음은 아무것도 없이 전체 통계)
SELECT DEPTNO, JOB, SUM(SAL) 총급여
FROM EMP
GROUP BY ROLLUP (DEPTNO, JOB)
;


-- CUBE -- (모든 경우의 수를 가지고 통계를 내준다 -> 둘다 있는 경우, 둘다 없는(NULL) 경우, 각각 하나씩(JOB만, DEPTNO만) 있는 경우 ,,,)
SELECT DEPTNO, JOB, SUM(SAL) 총급여
FROM EMP
GROUP BY CUBE (DEPTNO, JOB)
;

--DELETE FROM EMP  WHERE ENAME = 'SWY';
--COMMIT;

-- GROUPING SETS
SELECT DEPTNO, JOB, SUM(SAL) 총급여
FROM EMP
GROUP BY GROUPING SETS(DEPTNO, JOB)
;

-- ROLLUP, CUBD, GROUPING SETS 3개 함수에 대해 보조
-- GROUPING -- 칼럼이 NULL이면 1이 나옴
SELECT 
    DEPTNO
    , CASE --GROUPING(DEPTNO) 널값인지 판단
        WHEN GROUPING(DEPTNO) = 1 THEN '부서번호제외통계'
        WHEN GROUPING(JOB) = 1 THEN 'JOB제외통계'
        ELSE '엘스'
      END "통계에서 제외한 칼럼"
    , JOB
    , SUM(SAL) 총급여
FROM EMP
GROUP BY CUBE (DEPTNO, JOB)
;



--그룹을 나눠서 조회를 했는데 해당 그룹에 어떤 조건을 걸고 싶다면? -> WHERE이 아닌 HAVING(GROUP BY에서 WHERE 역할)을 써야 GROUP에 사용이 가능하다.
SELECT DEPTNO, SUM(SAL) 합계, FLOOR(AVG(SAL)) 평균, COUNT(*) 인원수
FROM EMP
GROUP BY DEPTNO
HAVING FLOOR(AVG(SAL)) > 2800 --여기서 WHERE로 쓰면 안된다 !!!!!!!!!!
ORDER BY DEPTNO ASC
;
