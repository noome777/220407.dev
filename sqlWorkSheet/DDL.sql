--DDL (���̺� ����)


--[����] CREATE TABLE ���̺��( Į���� Į��Ÿ��, Į���� Į��Ÿ��, Į���� Į��Ÿ��);
CREATE TABLE MEMBER(
    NO          NUMBER,
    ID          VARCHAR2(30),
    PWD         VARCHAR2(100),
    PHONE       CHAR(13),
    ENROLL_DATE TIMESTAMP
);

SELECT * FROM MEMBER;

INSERT INTO MEMBER VALUES (1, 'CHULSU', '7777', '010-1234-3333', SYSDATE); 

UPDATE MEMBER SET PWD = 1360 WHERE ID = 'HELLO';

DELETE MEMBER;