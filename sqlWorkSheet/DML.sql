--DML
----------------------------------------------
--SELECT ~ FROM : READ : ������ �б�
----------------------------------------------


SELECT * FROM EMP; --EMP ���̺��� ��� Į�� ��ȸ
SELECT EMPNO, ENAME FROM EMP; --EMP ���̺��� NO,NAME ��ȸ
SELECT EMPNO �����ȣ, ENAME ����̸� FROM EMP; --EMP ���̺��� Ư�� Į�� ��ȸ
SELECT EMPNO AS �����ȣ, ENAME AS ����̸� FROM EMP;
SELECT EMPNO "��� ��ȣ", ENAME "��� �̸�" FROM EMP;--���� ���� ""�ٿ��ֱ�


----------------------------------------------
-- INSERT : CREATE : ������ ����(����)
----------------------------------------------
/*
    INSERT INTO 
    ���̺��(Į��1, Į��2, Į��3 ...)
    VALUES (��1, ��2, ��3 ...)
    ;
    
    -Į�� ������ ������� �ص� ��
    -��� Į���� �� �ʿ�� ���� (NULL ������ ��)
    -��� Į���� �� ���� ��쿡��, Į���� ���� ����

*/
INSERT INTO 
EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES(7777, 'SWY', 'SALESMAN', 7902, SYSDATE, 777, 100, 30);

INSERT INTO 
EMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES(8888, 'SWY', 'SALESMAN', 7902, SYSDATE, 777, 100, 30);

INSERT INTO 
EMP
VALUES(1111, 'SWY', 'SALESMAN', 7902, SYSDATE, 777, 100, 30);

----------------------------------------------
--UPDATE ~ SET : UPDETE  : ������ ����
----------------------------------------------
/*
    [����]
    UPDATE ���̺�� SET Į���� = ��
    WHERE Į��1 ������ �񱳰�1
    AND Į��2 ������ �񱳰�2
    OR Į��3 ������ �񱳰�3
    ;
*/

INSERT INTO BONUS (ENAME, JOB, SAL, COMM)
VALUES ('SWY', 'SALESMAN', 777, 100);

INSERT INTO BONUS (ENAME, JOB, SAL, COMM)
VALUES ('SWY2', 'SALESMAN2', 777, 100);

UPDATE BONUS SET SAL ='111' WHERE ENAME ='SWY';
UPDATE BONUS SET SAL =111 WHERE COMM >= 100;

SELECT *FROM BONUS;

----------------------------------------------
--DELETE : DELETE : ������ ����
----------------------------------------------
SELECT * FROM BONUS;
SELECT * FROM EMP;

DELETE FROM BONUS; --BONUS ���̺��� ��� ROW ����
DELETE FROM BONUS WHERE ENAME = 'SWY2';

DELETE FROM EMP WHERE ENAME = 'SWY';
DELETE FROM EMP WHERE EMPNO IN(7777, 8888, 1111, 9999);
