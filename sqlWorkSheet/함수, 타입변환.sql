--�Լ�( (Ÿ�Ժ�ȯ) (TO_DATE, TO_NUMBER, TO_CHAR)



-- TO DATE
SELECT TO_DATE('22.5.19')
FROM DUAL;


-- TO_CHAR
--SELECT TO_CHAR(SYSDATE)    --��¥ -> ���ڿ� ��ȯ ����
SELECT TO_CHAR(12345)        --���� -> ���ڿ� ��ȯ ����
FROM DUAL;

--TO_CHAR (���� ���� ����)
SELECT TO_CHAR(12345, '9,999,999,999,999,999') || '��'
FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'YYYY"��" MM"��" DD"��"')
FROM DUAL;


--TO_NUMBER
SELECT TO_NUMBER('123')
FROM DUAL;