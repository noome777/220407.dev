-- ������

-- ����
DROP SEQUENCE MEMBER_NO_SEQ; --������ ����

CREATE SEQUENCE MEMBER_NO_SEQ
INCREMENT BY 1 -- ��������
START WITH 1 -- ���۰�
MINVALUE 1 --�ּҰ�
MAXVALUE 999 --�ִ밪
NOCYCLE --CYCLE --��ȯ ���� NOCYCLE�� 999���� 1�� ���ư��� �ʴ´�. CYCLE�� 1�� ���ư���.
NOCACHE --CACHE 20 --CACHE 100 -- ĳ�� ���� (������) 20���� ���� �̸� �������� �غ��صд�. ���� ���ٰ� Ű�� 1~20���� ������ �ִ��� ���󰡼� 21���� �������� ���۵ȴ�.
;       --NOCACHE�� �ϸ� ���ٰ� �ѵ� 7���� 8���� �ٽ� �������� ���۵ȴ�. NOCACHE ��� CACHE�� ���� ������ ���ɶ����̴�.


-- ���
SELECT ZZZSEQ2.NEXTVAL --CURRVAL
FROM DUAL;

SELECT MEMBER_NO_SEQ.NEXTVAL FROM DUAL;
SELECT MEMBER_NO_SEQ.CURRVAL FROM DUAL;


-- ����
ALTER MEMBER_NO_SEQ
INCEMENT BY 2
MINVALUE -10
MAXVALUE 123
CYCLE
CACHE 100
;

