-- ���� (���� ���� !!)

SELECT ROWNUM, E.*
FROM EMP E 
ORDER BY HIREDATE
; --�̷��� �ϸ� ROWNUM�� ���׹��� �Ǵϱ� �ذ� ���� ������ �ۼ��ؾ��Ѵ�.

SELECT ROW_NUMBER() OVER(ORDER BY HIREDATE) AS RN, E.* 
FROM EMP E
;

SELECT RANK() OVER(ORDER BY HIREDATE) , EMP.*
FROM EMP 
; --�ߺ� ������ �з��� 10���� �� ����

SELECT DENSE_RANK() OVER(ORDER BY HIREDATE) , EMP.*
FROM EMP 
; --10���� ����

-- �׷� ������ ��ŷ
SELECT RANK() OVER(PARTITION BY DEPTNO ORDER BY HIREDATE DESC) , EMP.*
FROM EMP 
; --PARTITION BY�� 