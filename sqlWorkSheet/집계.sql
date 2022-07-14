-- ����

SELECT DEPTNO, JOB
FROM EMP
GROUP BY DEPTNO, JOB
;

-- GROUP BY
SELECT DEPTNO, JOB, SUM(SAL) �ѱ޿�
FROM EMP
GROUP BY DEPTNO, JOB
;

-- ROLLUP -- �Ѱ�� �Ұ踦 ���� ��� ���� (�������� -> ó���� 2�� ��� ��� �� ������ 1���� ������ ��� �� ������ �ƹ��͵� ���� ��ü ���)
SELECT DEPTNO, JOB, SUM(SAL) �ѱ޿�
FROM EMP
GROUP BY ROLLUP (DEPTNO, JOB)
;


-- CUBE -- (��� ����� ���� ������ ��踦 ���ش� -> �Ѵ� �ִ� ���, �Ѵ� ����(NULL) ���, ���� �ϳ���(JOB��, DEPTNO��) �ִ� ��� ,,,)
SELECT DEPTNO, JOB, SUM(SAL) �ѱ޿�
FROM EMP
GROUP BY CUBE (DEPTNO, JOB)
;

--DELETE FROM EMP  WHERE ENAME = 'SWY';
--COMMIT;

-- GROUPING SETS
SELECT DEPTNO, JOB, SUM(SAL) �ѱ޿�
FROM EMP
GROUP BY GROUPING SETS(DEPTNO, JOB)
;

-- ROLLUP, CUBD, GROUPING SETS 3�� �Լ��� ���� ����
-- GROUPING -- Į���� NULL�̸� 1�� ����
SELECT 
    DEPTNO
    , CASE --GROUPING(DEPTNO) �ΰ����� �Ǵ�
        WHEN GROUPING(DEPTNO) = 1 THEN '�μ���ȣ�������'
        WHEN GROUPING(JOB) = 1 THEN 'JOB�������'
        ELSE '����'
      END "��迡�� ������ Į��"
    , JOB
    , SUM(SAL) �ѱ޿�
FROM EMP
GROUP BY CUBE (DEPTNO, JOB)
;



--�׷��� ������ ��ȸ�� �ߴµ� �ش� �׷쿡 � ������ �ɰ� �ʹٸ�? -> WHERE�� �ƴ� HAVING(GROUP BY���� WHERE ����)�� ��� GROUP�� ����� �����ϴ�.
SELECT DEPTNO, SUM(SAL) �հ�, FLOOR(AVG(SAL)) ���, COUNT(*) �ο���
FROM EMP
GROUP BY DEPTNO
HAVING FLOOR(AVG(SAL)) > 2800 --���⼭ WHERE�� ���� �ȵȴ� !!!!!!!!!!
ORDER BY DEPTNO ASC
;
