-- 서브쿼리 (쿼리 안의 쿼리) -> FROM 뒤에 TABLE을 쓰는 것이 기본이지만, 테이블 형태의 결과집합(SELECT 쿼리)을 써도 된다. FROM절 뒤에는 TABLE만 오는 게 아니라 SELECT 쿼리 형태도 올 수 있다.

-- FROM 절 서브쿼리
SELECT T.* 
FROM 
(
        SELECT 
              ROWNUM RN
            , ENAME 이름
            , HIREDATE 입사일
            , SAL 급여
            , DEPTNO 부서번호
        FROM EMP E
        WHERE SAL > 2000
) T
--WHERE DEPTNO = 20 이미 이런 칼럼이 없기 때문에 별칭으로 써줘야됨
WHERE 부서번호 = 10 OR 부서번호 = 20
ORDER BY RN
;

SELECT EMPNO, INITCAP(ENAME)
FROM EMP;


SELECT 
      ROWNUM RN
    , ENAME 이름
    , HIREDATE 입사일
    , SAL 급여
    , DEPTNO 부서번호
FROM EMP E
WHERE SAL > 2000
;



-- 서브쿼리 (다중 열)
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP 
WHERE (DEPTNO, SAL) IN (SELECT DEPTNO, SAL
                        FROM EMP
                        WHERE DEPTNO = 30);
                        

-- 스칼라 서브쿼리 (단일 행)
SELECT 
      ENAME
    , DEPTNO
    , SAL
    ,
    (
    SELECT TRUNC(AVG(SAL))
    FROM EMP
    WHERE DEPTNO = E.DEPTNO
    ) AS 부서평균급여
    FROM EMP E 
;

-- 상(호연)관 (서브)쿼리 -->  결과 조인이랑 비슷한 거임
SELECT
    ENAME
    , JOB
    , DEPTNO
    ,
    (
    SELECT DNAME
    FROM DEPT
    WHERE DEPTNO = E.DEPTNO
    ) DNAME
FROM EMP E 
;

SELECT * FROM DEPT;

-- ORDER BY 절 서브쿼리
SELECT EMPNO, ENAME, DEPTNO, HIREDATE
FROM EMP E 
ORDER BY 
(
    SELECT DNAME
    FROM DEPT
    WHERE DEPTNO = E.DEPTNO
) 
DESC
;

-- TRUNCATE == DELETE랑 똑같음 BUT ROLLBACK이 안됨. 실행속도가 DELETE보다 빠름 성능 ㅇㅇ
-- DELETE는 테이블의 행을 하나하나 삭제, DROP은 테이블을 걍 통째로 삭제, TRUNCATE는 테이블에서 스키마 아래 쪽을 다 잘라버림.
SELECT * FROM EMP;
TRUNCATE TABLE EMP;
DELETE FROM EMP;
ROLLBACK;


--



SELECT DEPTNO, SUM(SAL) 합계, FLOOR(AVG(SAL)) 평균, COUNT(*) 인원수
FROM EMP
GROUP BY DEPTNO, SAL
HAVING FLOOR(AVG(SAL)) > 2800
ORDER BY DEPTNO ASC;

SELECT DEPTNO, SUM(SAL) 합계, FLOOR(AVG(SAL)) 평균, COUNT(*) 인원수
FROM EMP
HAVING SAL > 2800
GROUP BY DEPTNO, SAL
ORDER BY DEPTNO ASC;

SELECT ROWNUM, ENAME, SAL
FROM (SELECT ROWNUM, ENAME, SAL FROM EMP ORDER BY SAL DESC)
WHERE ROWNUM <= 3;

SELECT ROWNUM, ENAME, SAL
FROM EMP
WHERE ROWNUM <= 3
ORDER BY SAL DESC;