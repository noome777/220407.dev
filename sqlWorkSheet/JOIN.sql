-- JOIN
/*
    -EQUI JOIN
    -NON-EQUI JOIN
    
    
    -INNER JOIN (똑같은 값이 존재할 때 해주는 조인)
    -OUTER JOIN (LEFT, RIGHT, FULL) (
    -CROSS JOIN
    -SELF JOIN
*/

SELECT * 
FROM EMP
;

SELECT * 
FROM DEPT
;

-- JOIN 문 사용해보기
SELECT 
          ENAME 사원명
        , E.DEPTNO 부서번호
        , DNAME 부서이름
FROM EMP E , DEPT D
--INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE E.DEPTNO = D.DEPTNO
;