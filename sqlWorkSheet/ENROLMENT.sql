--1. ���̺� ����
CREATE TABLE ENROLMENT(
    JAVA VARCHAR2(30),
    ORACLE VARCHAR(30),
    JSP VARCHAR(30),
    SERVELET VARCHAR(30)
    );
    


--2. ������ ����
DELETE ENROLMENT;

--3. ���̺� ����
DROP TABLE ENROLMENT;

--4. ������ �ֱ�
INSERT INTO ENROLMENT(JAVA,ORACLE,JSP,SERVELET) VALUES('25','28','30','27');

--5. ������ ����
UPDATE ENROLMENT SET ORACLE = '30';

--6. ���̺� ��������
SELECT * FROM ENROLMENT;