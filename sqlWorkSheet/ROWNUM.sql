--ROWNUM

--���̺��.�÷��� (���̺�� ���� ����)   
SELECT ZZZ.EMPNO, ZZZ.ENAME, ZZZ.MGR
FROM EMP ZZZ
;

--ROWNUM : ��(==ROW ==RECORD) ��ȣ�� �ٿ���
SELECT ROWNUM RNUM, E.*
FROM EMP E
WHERE ROWNUM < 10
--WHERE RNUM > 10 -- �ι�°�� ù��°�� �Ű�����
;

