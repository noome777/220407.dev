-- �Լ� (NULL ó��)

-- NVL (Į���� ���� 0�̸� -10���� ��ü�����)
SELECT EMPNO, ENAME, JOB, SAL, NVL(COMM, -10)
FROM EMP
;

-- NVL2 (Į���� NULL�̸� 0, 0�� �ƴϸ� 1�� ��ü���ش�)
SELECT EMPNO, ENAME, JOB, SAL, NVL2(COMM, 1, 0)
FROM EMP
;

-- NULLIF
SELECT EMPNO, ENAME, JOB, SAL, COMM, NULLIF(SAL, 800) AS "800�� NULL�� ǥ��"
FROM EMP; 
