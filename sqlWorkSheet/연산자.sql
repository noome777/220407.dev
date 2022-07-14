--DML (SELECT), ������

--������ ������ ���̺� ����
CREATE TABLE TEMP_TB(
    NAME VARCHAR2(100)
,   AGE NUMBER
);

--��ȸ
SELECT * FROM TEMP_TB;


--������ �ֱ�
INSERT INTO TEMP_TB VALUES('HELLO', 20);
INSERT INTO TEMP_TB VALUES('CHULSSU', 2);
INSERT INTO TEMP_TB VALUES('AREUM', 24);
COMMIT;

-- ���� ���ϱ� +
SELECT NAME "�̸�", AGE+1 "���⳪��" FROM TEMP_TB;
SELECT NAME AGE, AGE*2 FROM TEMP_TB;
SELECT NAME, AGE, AGE+3 ��������Į�� FROM TEMP_TB;
SELECT NAME, AGE, AGE+3" ���� ���� Į��" FROM TEMP_TB;
SELECT NAME, AGE, 'ZZZ' FROM TEMP_TB;

-- ���ڿ� ���ϱ�
SELECT NAME, AGE FROM TEMP_TB;
SELECT NAME, AGE, NAME ���������÷� FROM TEMP_TB;
SELECT NAME, AGE, NAME+1 ���������÷� FROM TEMP_TB;--����
SELECT NAME, AGE, 1+1 ���������÷� FROM TEMP_TB;
SELECT NAME, AGE, '1'+1 ���������÷� FROM TEMP_TB;--����+���� => ����
SELECT NAME, AGE, '1' || '1' ���������÷� FROM TEMP_TB;--����+���ڸ� ���ڿ������ڷ� ���� => ����
SELECT NAME, AGE, 7 ���������÷� FROM TEMP_TB; --���ڴ� Į�� ������ ����
SELECT NAME, AGE, '7' ���������÷� FROM TEMP_TB;--���ڴ� Į�� ���ʿ� ����
SELECT NAME, AGE, NAME+'ZZZ'  ���������÷� FROM TEMP_TB;--����
SELECT NAME, AGE, NAME || '������'  ���������÷� FROM TEMP_TB;--���ڿ� ���ϱ� ������
SELECT NAME, AGE, CONCAT(NAME, 'ZZZ')  ���������÷� FROM TEMP_TB;--CONCAT() �Լ� ���

SELECT NAME || '(' || AGE || ')' "�̸�(����)" FROM TEMP_TB;
--NAME + 1 : ����
--NAME || 1 : ����

SELECT SYSDATE FROM DUAL;

--������
/*
    = : ����
    != . ^=, <>             : �����ʴ�
    >, <, >= ,<=            : ��Һ�
    IS NULL                 : NULL ���� Ȯ��
    IS NOT NULL             : NULL�� �ƴ��� Ȯ��
    
    NOT                     : ����������
    AND                     : �׸���(==)
    OR                      :�Ǵ�
    BETWEEN A AND B         : A�� B�������� Ȯ��
    IN, NOT IN              : ���ԵǴ��� Ȯ��
    LIKE, NOT LIKE          : ���ڿ� ��
    %                       : 0�� �̻��� ���ڿ�
    _                       : �ѱ���
*/

SELECT * FROM TEMP_TB;

SELECT NAME, AGE FROM TEMP_TB; --��� �� ���

--���̰� 20�� ROW�� ���
SELECT NAME, AGE 
FROM TEMP_TB 
WHERE AGE = 20
;

--���̰� 20�� �ƴ� ROW�� ���
SELECT NAME, AGE 
FROM TEMP_TB 
WHERE AGE != 20
--WHERE AGE ^= 20
--WHERE AGE <> 20
;

--���̰� 20 �ʰ��� ROW ���
SELECT NAME, AGE 
FROM TEMP_TB
WHERE AGE > 20
;

--AGE�� NULL�� ������
--INSERT INTO TEMP_TB(NAME, AGE) VALUES('LAR', NULL);
INSERT INTO TEMP_TB(NAME) VALUES('LAR');


--AGE Į���� ���� NULL�� ROW�� ���
SELECT NAME, AGE 
FROM TEMP_TB
--WHERE AGE IS NULL //NULL�� ���� ���� =�� �ƴ� IS NULL�� ����ؾ� NULL�� Ȯ�� ����
WHERE AGE IS NOT NULL 
;

--AGE�� 19 �ʰ��̸鼭, 21 ������ ROW ���
SELECT NAME, AGE
FROM TEMP_TB
--WHERE 19 < AGE AND AGE< 21
;

--AGE�� 20 �����̰ų�, 22�̻��� ROW ���
SELECT NAME, AGE 
FROM TEMP_TB
WHERE AGE <=20 OR AGE >= 22
;

--AGE��  21-22���̿� �ش��ϴ� ROW ���
SELECT NAME, AGE
FROM TEMP_TB
WHERE AGE BETWEEN 21 AND 22
;

--NAME�� 'AAA'�� ROW�� ���
SELECT NAME, AGE
FROM TEMP_TB
--WHERE NAME = 'AAA' OR NAME='BBB'
--WHERE NAME IN('AAA','BBB')
WHERE NAME NOT IN('AAA', 'BBB')
;

--�̸��� S�� �����ϴ� ROW�� ���
SELECT NAME, AGE
FROM TEMP_TB
--WHERE NAME LIKE 'S%'
--WHERE NAME LIKE '%Q'
WHERE NAME NOT LIKE 'A%C';
;

--�̸��� ������ �����ϴ� ROW�� ���(�ڸ��� ����)
SELECT NAME, AGE 
FROM TEMP_TB
WHERE NAME LIKE '��%'
;

--�̸��� ������ �����ϴ� ������ �̸��� ���� ROW�� ���
SELECT NAME, AGE 
FROM TEMP_TB
WHERE NAME LIKE '��__'
;

--���Խ� REGULAR EXPRESSION

--������ �ֱ�
INSERT INTO TEMP_TB(NAME) VALUES('ABC');
INSERT INTO TEMP_TB(NAME) VALUES('SSS');
INSERT INTO TEMP_TB(NAME) VALUES('QQQ');
INSERT INTO TEMP_TB(NAME) VALUES('SIM');
INSERT INTO TEMP_TB(NAME) VALUES('KIM');
INSERT INTO TEMP_TB(NAME) VALUES('ȫ�浿');
INSERT INTO TEMP_TB(NAME) VALUES('ȫ��ȯ');
INSERT INTO TEMP_TB(NAME) VALUES('������');
INSERT INTO TEMP_TB(NAME) VALUES('��ö��');
INSERT INTO TEMP_TB(NAME) VALUES('����ѹ��ź��̿͵η��');
SELECT * FROM TEMP_TB;
--COMMIT;