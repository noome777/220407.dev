-- �Լ�(���ڿ�)

--SUBSTR
SELECT SUBSTR('ABCDEFGHIJK', 3, 5)
FROM DUAL;

SELECT *
FROM EMP
WHERE ENAME LIKE '%' || SUBSTR('ABCDEFGHIJK', 5, 1) || '%'
--WHERE ENAME LIKE '%E%' �����̶� �Ȱ�ư ����
;

--CONCAT : ���ڿ� ��ġ�� ���
SELECT CONCAT('ABC', '�ɿ���')
FROM DUAL
;

--TRIM : �������� 
--LTRIM : ���� ��������
--RTRIM : ������ ���� ����
SELECT TRIM ('           ABC            ') 
FROM DUAL
;

--LOWER : �ҹ��ڷ� ����
--UPPER : �빮�ڷ� ����
SELECT 'ABC'
FROM DUAL;

--REPLACE : ��ü�ϴ�
SELECT REPLACE ('ABC', 'B', 'X')
FROM DUAL;

-- PAD : ���ϴ� ������ ��ŭ ��ĭ�� ä���� (���� ���ϴ� ���ڷ�)
-- LPAD 
-- RPAD
SELECT LPAD('ABC', 5, '0') TEST
FROM DUAL;

-- INITCAP : ù ���ڸ� �빮�ڷ� �ٲ���
SELECT INITCAP('ABC')
FROM DUAL;

-- INSTR : Ư�� ���ڿ��� �� ��°�� �����ϴ��� Ȯ��
SELECT INSTR('ABCDEFGKH12345KH12354', 'KH', 5, 2)
FROM DUAL;

--LENGTH : ���ڿ��� ����
SELECT LENGTH('ABC123zzz')
FROM DUAL;