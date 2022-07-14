--DDL

--���̺� ����
--Į���� ������ ���� ��, ""�� �����ָ� ��� ����
--���� Į�������� ����ϰ� ������ ""�� ó��
CREATE TABLE KH_MEMBER(
    NAME VARCHAR2(10)
   ,AGE NUMBER
);

--�ڴʰ� ���̺� Į�� �߰� (DDL)
ALTER TABLE KH_MEMBER ADD EMAIL VARCHAR2(100);

SELECT * FROM KH_MEMBER;

--���̺� Į�� ����
ALTER TABLE KH_MEMBER DROP COLUMN EMAIL;

--Į�� �����ϱ�
--���ǿ� ���� �ʴ� �����Ͱ� �̹� ����ִٸ�, ������ �Ұ�����
ALTER TABLE KH_MEMBER MODIFY NAME VARCHAR(2);

--������ �߰��ϱ�
INSERT INTO KH_MEMBER (NAME, AGE)
VALUES ('�̾Ƹ�', 24);
COMMIT;

--���̺� �����ϱ�
DROP TABLE KH_MEMBER;
