

SELECT * FROM EMP;
SELECT * FROM DEPT;

-- SYS �������� ���� �ο��� �������.
-- GRANT CREATE VIEW TO C##KH; 
CREATE VIEW EMPANDDEPT
AS 
    SELECT 
      EMPNO
    , ENAME
    , MGR
    , HIREDATE
    , SAL
    , COMM
    , E.DEPTNO
    , DNAME
    , LOC
FROM EMP E 
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;


SELECT * 
FROM EMPANDDEPT;