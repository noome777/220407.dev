--개요
-------------------------------------------
--<SQL>
-------------------------------------------





--1. DDL (테이블 정의 언어, 테이블 생성 구문) --> CREATE , DROP
/*
    DATA DEFINATION LANGUAGE

*/


--2. DML (데이터 조작 언어, 데이터에 값을 넣고, 변경하고 ,지우는) --> SELECT, INSERT, UPDATE, DELETE
/*
    DATA MANIPULATION LANGUAGE

*/


--3. DCL (데이터 제어 언어, 계정을 만들고 권한부여) --> GRANT
/*
    DATA CONTROL LANGUAGE

*/


--4. 자료형

--문자열 형식
/*
    1.. CHAR(SIZE)
    EX) CHAR(10) : 10 바이트까지 담을 수 있는 문자열 칼럼 생성
    
    2.. VARCHAR2(SIZE)
    EX) VARCHAR(10) : 최대 10바이트까지 담을 수 있는 문자열 칼럼 생성
    
    3.. NCHAR(SIZE)
    EX) NCHAR(10) : 10글자 까지 담을 수 있는 문자열 칼럼 생성(근데, 상황에 따라 2 또는 3바이트로 처리됨)

*/


--대용량 형식
/*
    1.. LONG : 이제는 사용 안 함
    
    2.. CLOB : 대용량 문자열 타입(4GB)
    
    3.. NCLOB : CLOB과 비슷함 (유니코드로 처리함)

*/

--숫자 형식
/*
    1.. NUMBER(10) : 최대 10글자로 이루어진 숫자, DB에서는 기본자료형 같은 거 없고 NUMBER 하나로 처리됨
    
    2.. NUMBER(10, 5) : 소수점 5자리 포함하는 최대 10자리 숫자
    
    3.. NUMBER(10, -5) : 소수점 -5 자리에서 반올림하는 최대 10자리 숫자
    
    4.. NUMBER : 최대 38글자로 이루어진 숫자 == NUMBER(38)
    
*/


--날짜(DATE) 형식
/*
    DATE : 날짜 저장
    TIMESTAMP : 날짜 + 시간 저장
    TIMESTAMP WITH TIME ZONE : 날짜 + 시간+ 위치 저장
    TIMESTAMP WITH LOCAL TIME ZONE : 날짜 + 시간 +위치 저장
*/