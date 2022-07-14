-- �������� (���� ���� ����) -> FROM �ڿ� TABLE�� ���� ���� �⺻������, ���̺� ������ �������(SELECT ����)�� �ᵵ �ȴ�. FROM�� �ڿ��� TABLE�� ���� �� �ƴ϶� SELECT ���� ���µ� �� �� �ִ�.

-- FROM �� ��������
SELECT T.* 
FROM 
(
        SELECT 
              ROWNUM RN
            , ENAME �̸�
            , HIREDATE �Ի���
            , SAL �޿�
            , DEPTNO �μ���ȣ
        FROM EMP E
        WHERE SAL > 2000
) T
--WHERE DEPTNO = 20 �̹� �̷� Į���� ���� ������ ��Ī���� ����ߵ�
WHERE �μ���ȣ = 10 OR �μ���ȣ = 20
ORDER BY RN
;

SELECT EMPNO, INITCAP(ENAME)
FROM EMP;


SELECT 
      ROWNUM RN
    , ENAME �̸�
    , HIREDATE �Ի���
    , SAL �޿�
    , DEPTNO �μ���ȣ
FROM EMP E
WHERE SAL > 2000
;



-- �������� (���� ��)
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP 
WHERE (DEPTNO, SAL) IN (SELECT DEPTNO, SAL
                        FROM EMP
                        WHERE DEPTNO = 30);
                        

-- ��Į�� �������� (���� ��)
SELECT 
      ENAME
    , DEPTNO
    , SAL
    ,
    (
    SELECT TRUNC(AVG(SAL))
    FROM EMP
    WHERE DEPTNO = E.DEPTNO
    ) AS �μ���ձ޿�
    FROM EMP E 
;

-- ��(ȣ��)�� (����)���� -->  ��� �����̶� ����� ����
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

-- ORDER BY �� ��������
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

-- TRUNCATE == DELETE�� �Ȱ��� BUT ROLLBACK�� �ȵ�. ����ӵ��� DELETE���� ���� ���� ����
-- DELETE�� ���̺��� ���� �ϳ��ϳ� ����, DROP�� ���̺��� �� ��°�� ����, TRUNCATE�� ���̺��� ��Ű�� �Ʒ� ���� �� �߶����.
SELECT * FROM EMP;
TRUNCATE TABLE EMP;
DELETE FROM EMP;
ROLLBACK;


--



SELECT DEPTNO, SUM(SAL) �հ�, FLOOR(AVG(SAL)) ���, COUNT(*) �ο���
FROM EMP
GROUP BY DEPTNO, SAL
HAVING FLOOR(AVG(SAL)) > 2800
ORDER BY DEPTNO ASC;

SELECT DEPTNO, SUM(SAL) �հ�, FLOOR(AVG(SAL)) ���, COUNT(*) �ο���
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