-- ����ǥ���� (REGULAR EXPRESSION)

-- ��ȭ��ȣ�� �׽�Ʈ

-- ���Խ� ������ ���� �׽�Ʈ ���̺� ����

DROP TABLE MEMBER;
CREATE TABLE MEMBER(
    NO NUMBER
,   ID VARCHAR2(100)
,   PWD VARCHAR2(100)
,   PHONE VARCHAR2(100)
);

-- ���̺� Į�� �߰�
ALTER TABLE MEMBER ADD EMAIL VARCHAR2(100);



-- ���̺� Ȯ��
SELECT * FROM MEMBER;


-- ������ �ֱ�
INSERT INTO MEMBER VALUES(8, '���̿���ġ', '1234', '010-9876-5432','kh@naver.com');
COMMIT;


-- ��ȭ��ȣ ����� ���� ��� ��ȸ
SELECT * FROM MEMBER
--WHERE PHONE LIKE '%-%-%';
WHERE REGEXP_LIKE (PHONE, '^01[01679]-\d{4}-\d{4}$');

/*
    [] : �� ����
     ex) [���̹���], [0123456789], [0-9]
     
    \d : ���� �ϳ�
     ex) \d\d\d\d : ���� 4��
     
    {} : �ݺ��Ǵ� ����
     ex) \d(10) : ���� 10��
     ex) \d{3,4} : ���� 3�� �Ǵ� 4��
     
    ^ : ���ڿ��� ���� 
    $ : ���ڿ��� ��
*/


-- �̸��� ��Ȯ�� �˻�
SELECT * FROM MEMBER
WHERE REGEXP_LIKE (EMAIL, '\D\w*@\D\w*.(com|co.kr|net)')
;

/*
    \w : ���� �ϳ� (���ĺ�, ����, �����)��
     * : 0�� �̻�
     + : 1�� �̻�
     | : �Ǵ� ()�� �� ���൵ ��� ����
     ex) abc|zzz|qqq : abc �Ǵ� zzz �Ǵ� qqq �� �߿� �ϳ�
     \D : ���ڰ� �ƴ� �� 
     
*/