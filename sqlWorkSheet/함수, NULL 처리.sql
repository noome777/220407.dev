-- 함수 (NULL 처리)

-- NVL (칼럼의 값이 0이면 -10으로 대체해줘라)
SELECT EMPNO, ENAME, JOB, SAL, NVL(COMM, -10)
FROM EMP
;

-- NVL2 (칼럼이 NULL이면 0, 0이 아니면 1로 대체해준다)
SELECT EMPNO, ENAME, JOB, SAL, NVL2(COMM, 1, 0)
FROM EMP
;

-- NULLIF
SELECT EMPNO, ENAME, JOB, SAL, COMM, NULLIF(SAL, 800) AS "800은 NULL로 표시"
FROM EMP; 
