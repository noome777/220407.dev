-- �׷� ������

SELECT AVG(SAL), DEPTNO
FROM EMP
WHERE COMM IS NOT NULL --WHERE���� �׷��� �ϱ� ���� ����� ���� ������.
GROUP BY DEPTNO --�μ��ڵ尡 �Ȱ��� �ֵ鳢�� ������ 3���� �׷��� �������. GROUP BY�� ����ϸ� AVG���� �����Լ��� ��� ����.
HAVING AVG(SAL) > 2000 AND DEPTNO < 15 -- �׷��� ����� ���� ���� ����. �׷��ο����� WHERE�� ���� ȿ��. �׷��� �� ����� ���ؼ� ��հ��� 2000�̻��� �͸� ���ڴ�.
ORDER BY DEPTNO DESC
;

SELECT AVG(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO
;
-- SQL ������� (�ۼ� ���� �����ֱ�) �������ؽ���
/*
    1. FROM
    2. WHERE
    3. GROUP BY
    4. HAVING
    5. SELECT
    6. ORDER BY

*/