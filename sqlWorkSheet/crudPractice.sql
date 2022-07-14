--SQL은 대문자로 작성
--한줄 주석
/*  
    여러줄
    주석도 
    가능
*/

--1. 테이블 생성
CREATE TABLE MEMBER(
    ID VARCHAR2(30),
    PWD VARCHAR2(100));

--테이블 조회 (READ)
SELECT * FROM MEMBER;

--데이터 넣기 (CREATE)
INSERT INTO MEMBER(ID, PWD) VALUES('AREUM', '1234');

--데이터 수정 (UPDATE)
UPDATE MEMBER SET PWD ='4321';

--데이터 삭제 (DELETE)
DELETE MEMBER;

--테이블 삭제
DROP TABLE MEMBER;

