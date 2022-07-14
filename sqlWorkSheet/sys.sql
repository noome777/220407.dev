ALTER USER C##KH DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

--���� ����
--CREATE USER ���̵� IDENTIFIED BY �н�����;
CREATE USER "C##KH" IDENTIFIED BY "KH";

--���� ����
DROP USER C##KH CASCADE

--������ ���� �ο�
--GRANT ����1, ����2, ... TO ������;
GRANT CONNECT, RESOURCE TO C##KH;


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

--2. ���̺� ��ȸ (READ)
SELECT * FROM MEMBER;

--3. ������ �ֱ� (CREATE)
INSERT INTO MEMBER(ID, PWD) VALUES('AREUM', '1234');

--4. ������ ���� (UPDATE)
UPDATE MEMBER SET PWD ='4321';

--5. ������ ���� (DELETE)
DELETE MEMBER;

--6. ���̺� ����
DROP TABLE MEMBER;

