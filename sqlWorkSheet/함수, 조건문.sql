-- �Լ�

-- DECODE
SELECT EMPNO, ENAME, DEPTNO, DECODE(DEPTNO, 10, '����1��', 20, '����2��', 30, '����3��')
FROM EMP;

-- CASE WHEN THEN END
SELECT 
      EMPNO
    , ENAME
    , DEPTNO
    , CASE
--    WHEN ����? THEN �׷��� �̷���
      WHEN DEPTNO = 10 THEN '����1��'
      WHEN DEPTNO = 20 THEN '����2��'
      WHEN DEPTNO = 30 THEN '����3��'
      ELSE 'ZZZ'
      END
FROM EMP
ORDER BY DEPTNO ASC
;


-- �ǽ� (EMP)
SELECT
    EMP.* 
     ,CASE
     WHEN SAL <= 1000 THEN '����'
     WHEN SAL < 2000  THEN '�ʱ�'
     WHEN SAL < 3000  THEN '�߱�'
     WHEN SAL < 4000  THEN '���'
     ELSE 'Ư��'
     END ���� --Į���� ���ָ� ��
FROM EMP;