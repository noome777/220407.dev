-- JOIN
/*
    -EQUI JOIN
    -NON-EQUI JOIN
    
    
    -INNER JOIN (�Ȱ��� ���� ������ �� ���ִ� ����)
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

-- JOIN �� ����غ���
SELECT 
          ENAME �����
        , E.DEPTNO �μ���ȣ
        , DNAME �μ��̸�
FROM EMP E , DEPT D
--INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE E.DEPTNO = D.DEPTNO
;