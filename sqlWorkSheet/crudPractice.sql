--SQL�� �빮�ڷ� �ۼ�
--���� �ּ�
/*  
    ������
    �ּ��� 
    ����
*/

--1. ���̺� ����
CREATE TABLE MEMBER(
    ID VARCHAR2(30),
    PWD VARCHAR2(100));

--���̺� ��ȸ (READ)
SELECT * FROM MEMBER;

--������ �ֱ� (CREATE)
INSERT INTO MEMBER(ID, PWD) VALUES('AREUM', '1234');

--������ ���� (UPDATE)
UPDATE MEMBER SET PWD ='4321';

--������ ���� (DELETE)
DELETE MEMBER;

--���̺� ����
DROP TABLE MEMBER;

