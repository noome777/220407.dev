--�� ���б� ��ũ�� ����
--SQL01_SELECT(Basic)

-- 1��
-- �� ������б��� �а� �̸��� �迭�� ǥ���Ͻÿ�. ��, ��� ����� "�а� ��", "�迭"���� ǥ���ϵ��� �Ѵ�.
SELECT DEPARTMENT_NAME "�а� ��", CATEGORY �迭
FROM TB_DEPARTMENT;

-- 2��
-- �а��� �а� ������ ������ ���� ���·� ȭ�鿡 ����Ѵ�.
/* EX )
    ������а��� ������ 20�� �Դϴ�.
    ������а��� ������ 36�� �Դϴ�.
    ...
*/
SELECT CONCAT(CONCAT(CONCAT(CONCAT(DEPARTMENT_NAME, '��'),' ������ '), CAPACITY),'�� �Դϴ�.') �а����а�����
FROM TB_DEPARTMENT;

-- 3��
-- "������а�" �� �ٴϴ� ���л� �� ���� �������� ���л��� ã�ƴ޶�� ��û�� ���Դ�. �����ΰ�?
-- (�����а��� '�а��ڵ�'�� �а� ���̺�(TB_DEPARTMENT)�� ��ȸ�ؼ� ã�� ������ ����)
SELECT DEPARTMENT_NO FROM TB_DEPARTMENT WHERE DEPARTMENT_NAME ='������а�';

SELECT STUDENT_NAME
FROM TB_STUDENT 
WHERE DEPARTMENT_NO = '001' AND ABSENCE_YN = 'Y' AND SUBSTR(STUDENT_SSN,8, 1) = '2'
;

                     
-- 4�� 
-- ���������� ���� ���� ��� ��ü�ڵ��� ã�� �̸��� �Խ��ϰ��� �Ѵ�.
-- �� ����ڵ��� �й��� ������ ���� �� ����ڵ��� ã�� ������ SQL������ �ۼ��Ͻÿ�.
-- A513079, A513090, A513091, A513110, A513119
-- (�̸� ���� �������� ����)
SELECT STUDENT_NAME ����_���_��ü��_�̸�
FROM TB_STUDENT
WHERE STUDENT_NO IN('A513079', 'A513090', 'A513091', 'A513110', 'A513119')
ORDER BY STUDENT_NAME DESC
;

-- 5��
-- ���� ������ 20�� �̻� 30�� ������ �а����� �а� �̸��� �迭�� ����Ͻÿ�.
SELECT DEPARTMENT_NAME �а��̸�, CATEGORY �迭
FROM TB_DEPARTMENT
WHERE CAPACITY >=20 AND CAPACITY <= 30
;


-- 6��
-- �� ������б��� ������ �����ϰ� ��� �������� �Ҽ� �а��� ������ �ִ�.
-- �׷� �� ������б� ������ �̸��� �˾Ƴ� �� �ִ� SQL ������ �ۼ��Ͻÿ�.
SELECT PROFESSOR_NAME 
FROM TB_PROFESSOR
WHERE DEPARTMENT_NO IS NULL
;

-- 7��
-- Ȥ�� ������� ������ �а��� �����Ǿ� ���� ���� �л��� �ִ��� Ȯ���ϰ��� �Ѵ�.
-- ��� SQL������ ����ϸ� �� ������ �ۼ��Ͻÿ�.
-- (SELECT STUDENT_NAME � ����) 
SELECT *
FROM TB_STUDENT S 
JOIN TB_DEPARTMENT D
ON S.DEPARTMENT_NO = D.DEPARTMENT_NO
WHERE S.DEPARTMENT_NO IS NULL
;

 
-- 8��
-- ������û�� �Ϸ��� �Ѵ�. �������� ���θ� Ȯ���ؾ� �ϴµ�, ���������� �����ϴ� ������� � �������� ���� ��ȣ�� ��ȸ�� ���ÿ�.
SELECT CLASS_NO �����ȣ
FROM TB_CLASS
WHERE PREATTENDING_CLASS_NO IS NOT NULL;

-- 9��
-- �� ���п��� � �迭(CATEGORY)���� �ִ��� ��ȸ�� ���ÿ�.
SELECT CATEGORY �迭
FROM TB_DEPARTMENT
GROUP BY CATEGORY;

SELECT DISTINCT CATEGORY �迭
FROM TB_DEPARTMENT;

-- 10��
-- 02�й� ���� �����ڵ��� ������ ������� �Ѵ�. 
-- ������ ������� ������ �������� �л����� 
-- �й�, �̸�, �ֹι�ȣ�� ����ϴ� ������ �ۼ��Ͻÿ�.
SELECT STUDENT_NO �й�, STUDENT_NAME �̸�, STUDENT_SSN �ֹι�ȣ
FROM TB_STUDENT
WHERE ABSENCE_YN = 'N'
AND EXTRACT(YEAR FROM ENTRANCE_DATE) = '2002'
AND STUDENT_ADDRESS LIKE '%����%'
;