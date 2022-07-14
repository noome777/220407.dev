--DDL (테이블 생성)


--[문법] CREATE TABLE 테이블명( 칼럼명 칼럼타입, 칼럼명 칼럼타입, 칼럼명 칼럼타입);
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