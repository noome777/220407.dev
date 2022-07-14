/*

    INSTR:  ������ ��ġ���� ������ ���� ��°���� ��Ÿ���� ������ ������ġ
    LPAD. RAD:  ������ ���ڸ� ���� �Ǵ� �����ʿ� ���ٿ���
    LTRIM, RTRIM:  ��������
    SUBSTR: ������ ��ġ���� ������ ������ŭ ���ڿ� ����
    LOWER ,UPPER, INICAP
    CONCAT : ���ڿ� ��ġ��
    REPLACE :�����Ϸ��� ���� ����
    
    
    ABS
    MOD
    ROUND
    FLOOR
    CEIL
    TRUNC
    
    MONTH_BETWEEN
    ADD_MONTHS
    
    EXTRACT(YEAR|MONTH|DAY FORM DATE) :

*/
SELECT EXTRACT(DAY FROM SYSDATE)FROM DUAL;

/*
    ���ڿ� :TO_CHAR
    ���� : TO_NUMBER
    ��¥ : TO_DATE
*/

SELECT SYSDATE FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') FROM DUAL;

SELECT TO_DATE('20220712') FROM DUAL;

/*
    NULL ó�� �Լ�
        NVL
        NVL2
        DECODE
        CASE ~ WHEN ~ THEN ~ ELSE~ END
        
*/

--EMPLOYEE ���̺��� �����, �޿�, ���ʽ�, ���ʽ� ���� ���� ��ȸ
SELECT 
    EMP_NAME �����
    , SALARY �޿�
    , SALARY*NVL(BONUS, 0) ���ʽ�
    , NVL(SALARY+(SALARY*BONUS), SALARY) �ѱ޿�
    , SALARY + SALARY*NVL(BONUS, 0) �ѱ޿�
FROM EMPLOYEE
;

-- ���ʽ� ���� // ���� ���ʽ� �޴� ����� 0.1, �������� 0
SELECT 
    EMP_NAME �����
    , NVL(BONUS, 0) �������ʽ���
    , NVL2(BONUS, 0.1, 0) ����Ⱥ��ʽ���
    , (SALARY+SALARY*NVL2(BONUS, 0.1, 0))*12 ���� --(�޿�+���ʽ�) *12
FROM EMPLOYEE
;


SELECT *
FROM EMPLOYEE
WHERE EMP_ID < 210
ORDER BY EMP_NAME ASC
NULLS LAST
;

--EMPLOYEE ���̺��� ���, �����, �ֹι�ȣ, ���� ��ȸ
--DECODE
SELECT 
    DEPT_CODE
    , EMP_NAME
    , EMP_NO
    , SUBSTR(EMP_NO, 8, 1) ���ڸ�ù��°����
    , DECODE(SUBSTR(EMP_NO, 8, 1), 1, '����', 2, '����') ����
FROM EMPLOYEE
;

--CASE
SELECT 
    DEPT_CODE
    , EMP_NAME
    , EMP_NO
    , SUBSTR(EMP_NO, 8, 1) ���ڸ�ù��°����
    , CASE 
        WHEN SUBSTR(EMP_NO, 8, 1) = 1 THEN '����'
        WHEN SUBSTR(EMP_NO, 8, 1) = 2 THEN '����'
        ELSE '���ڵ����ڵ��ƴ�'
        END ����
FROM EMPLOYEE
;


/*
    �׷��Լ�
        SUM
        AVG
        MIN
        MAX
        COUNT
        
*/

SELECT SUM(SALARY)
FROM EMPLOYEE
;

/*
    GROUP BY
    HAVING
*/

SELECT DEPT_CODE, AVG(SALARY) 
FROM EMPLOYEE
GROUP BY DEPT_CODE
HAVING AVG(SALARY) > 3000000
;

--�� �μ��� �׷����� ��� �μ��� �޿� �� ��
SELECT DEPT_CODE �μ���, SUM(SALARY) �μ��޿�����
FROM EMPLOYEE
GROUP BY DEPT_CODE
;

--��ü ��� �� ��ȸ
SELECT COUNT(*)
FROM EMPLOYEE
;

--�� �μ��� ��� �� ��ȸ
SELECT DEPT_CODE, COUNT(*)
FROM EMPLOYEE
GROUP BY DEPT_CODE
;

--�� �μ����� ���ʽ� �޴� ��� �� (GROUP�Լ��� NULL ���� �����ϰ� ī��Ʈ �Ѵ�.))
SELECT DEPT_CODE, COUNT(BONUS)
FROM EMPLOYEE
GROUP BY DEPT_CODE
;

/*
    �����Լ�
        
        CUBE
        ROLLUP
        GROUPING SETS
        
        GROUPING
*/
SELECT
    DEPT_CODE
    , GROUPING(DEPT_CODE)
    , SUM(SALARY)
    , AVG(SALARY)
FROM EMPLOYEE
GROUP BY CUBE(DEPT_CODE)
;

/*
    ���տ�����
        UNION
        MINUS
        UNION ALL
        INTERSECT
*/

/*
    JOIN
        INNER JOIN
        OUTER JOIN
            -LEFT, RIGHT, FULL
        CROSS JOIN
        
        NON EQUAL JOIN
        
        SELF JOIN
*/

-- ����� ���̺��� �μ��ڵ带 �̿��ؼ�, �μ��̸��� �Բ� ���
--EMPLOYEE, DEPARTMENT JOIN �ؼ�  ��� Į�� ��ȸ
SELECT A.EMP_NAME, A.DEPT_CODE, B.DEPT_TITLE
FROM EMPLOYEE A
FULL OUTER JOIN DEPARTMENT B ON A.DEPT_CODE = B.DEPT_ID
;

--NON EQUAL JOIN(�� ����)
SELECT E.EMP_NAME, E.SALARY, S.SAL_LEVEL, S.MAX_SAL, S.MIN_SAL
FROM EMPLOYEE E 
--JOIN SAL_GRADE S ON (E.SALARY BETWEEN S.MIN_SAL AND S.MAX_SAL)
JOIN SAL_GRADE S ON (E.SALARY >S.MIN_SAL)
ORDER BY EMP_NAME
;
