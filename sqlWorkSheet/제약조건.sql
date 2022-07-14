-- ��������


-- NOT NULL : NULL �� ������� ����
CREATE TABLE ZZZ(
    ID VARCHAR2(100) NOT NULL
);
-- ���̺� ���� ���Ŀ��� �������� ���� ����
ALTER TABLE ZZZ MODIFY ID VARCHAR2(100) NOT NULL;



-- DEFUALT : �⺻���� �� ��
CREATE TABLE ZZZ(
      ID VARCHAR2(100) DEFAULT 'ADMIN'
);
-- ���̺� ���� ���Ŀ��� �������� ���� ����
ALTER TABLE ZZZ MODIFY ID VARCHAR2(100) DEFAULT 'HONGGILDONG';



-- CHECK : üũ ���� �˻縦 ����ؾ߸� ������ ���� ����
CREATE TABLE ZZZ (
    ID VARCHAR2(100) CHECK(ID.LENGTH < 10)
);
-- ���̺� ���� ���Ŀ��� �������� ���� ����
ALTER TABLE ZZZ 
ADD CONSTRAINT ZZZIDCHECK
CHECK(ID.LENGTH < 10);


-- PRIMARYKEY : �⺻Ű(�ĺ���) --> NOT NULL, UNIQUE ����
CREATE TABLE ZZZ(
    ID VARCHAR2(100) PRIMARY KEY
);

CREATE TABLE ZZZ(
    ID VARCHAR2(100),
    CONSTRAINT ZZZTBPK PRIMARY KEY(ID)
);

ALTER TABLE ZZZ
ADD CONSTRAINT ZZZTBK PRIMARY KEY(ID);



-- UNIQUE : �ߺ�����
CREATE TABLE ZZZ(
    ID VARCHAR2(100) UNIQUE
);

ALTER TABLE ZZZ
ADD CONSTRAINT ZZZTBIDUQ UNIQUE(ID);



-- FOREIGNKEY : �ܷ�Ű : �θ����̺��� �⺻Ű�� ������
CREATE TABLE STUDENT(
      NO NUMBER PRIMARY KEY -- �� �⺻Ű�� ���ٸ� �ܷ�Ű�� �����Ҷ� ������ �θ�Ű(����Ű)�� ���ٰ� �߱� ������ �⺻Ű ������ ����ߵ�.
    , NAME VARCHAR2(100)
);

CREATE TABLE SCORE(
      STD_NO NUMBER
    , GRADE CHAR(2),
    --STU_NO REFERENCES STUDENT'S NO
    CONSTRAINT STDFK FOREIGN KEY(STD_NO) REFERENCES STUDENT(NO) ON DELETE CASCADE --ON DELETE SET NULL --�θ� ���̺��� 1�� ROW�� �����ϸ� �����ϰ� �ִ� �ڽ��� 1�� ROW�� NULL�� �ȴ�.
                                                                --�θ� ���̺��� 1�� ROW�� �����ϸ� �����ϰ� �ִ� �ڽ��� 1�� ROW�� �����ȴ�.
);

DROP TABLE SCORE;
DROP TABLE STUDENT;

INSERT INTO STUDENT (NO, NAME)
VALUES(1, 'JAVA');
COMMIT;

INSERT INTO SCORE (STD_NO, GRADE)
VALUES(1, 'A');

-- ���Ἲ ��������(C##KH.STDFK)�� ����Ǿ����ϴ�- �θ� Ű�� �����ϴ�
--INSERT INTO SCORE (STD_NO, GRADE)
--VALUES(5, 'A');



DROP TABLE ZZZ;