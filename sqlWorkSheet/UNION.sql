-- UNION : �÷� Ÿ�� (���ڳ���, ���ڳ����� ���Ͽ� ����), ���� ��ġ�ؾ���
-- ��� ������ ��������(���� ���·�)

SELECT 10 ù��°Į��, 20 �ι�°Į�� FROM DUAL
UNION
SELECT 50 FIRSTCOL, 60 SECONDCOL FROM DUAL
UNION
SELECT 504534 FIRSTCOL, 6053 SECONDCOL FROM DUAL;


SELECT EMPNO �����ȣ, ENAME ����� FROM EMP
UNION
SELECT 999, '���缮' FROM DUAL;

-- INTERSECT
SELECT EMPNO �����ȣ, ENAME ����� FROM EMP
INTERSECT
SELECT 7777, 'SWY' FROM DUAL;

-- UNION ALL (�ߺ��� ���� �� ������)
SELECT EMPNO �����ȣ, ENAME ����� FROM EMP
UNION ALL
SELECT 7777, 'SWY' FROM DUAL;

SELECT EMPNO �����ȣ, ENAME ����� FROM EMP
UNION 
SELECT 7777, 'SWY' FROM DUAL;
 
-- MINUS : A ���տ��� B ���հ� �������� ROW�� ��
SELECT EMPNO �����ȣ, ENAME ����� FROM EMP
MINUS
SELECT 7777, 'SWY' FROM DUAL;