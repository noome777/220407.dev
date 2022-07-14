--DML
----------------------------------------------
--SELECT ~ FROM : READ : 데이터 읽기
----------------------------------------------


SELECT * FROM EMP; --EMP 테이블의 모든 칼럼 조회
SELECT EMPNO, ENAME FROM EMP; --EMP 테이블의 NO,NAME 조회
SELECT EMPNO 사원번호, ENAME 사원이름 FROM EMP; --EMP 테이블의 특정 칼럼 조회
SELECT EMPNO AS 사원번호, ENAME AS 사원이름 FROM EMP;
SELECT EMPNO "사원 번호", ENAME "사원 이름" FROM EMP;--띄어쓰기 사용시 ""붙여주기


----------------------------------------------
-- INSERT : CREATE : 데이터 삽입(생성)
----------------------------------------------
/*
    INSERT INTO 
    테이블명(칼럼1, 칼럼2, 칼럼3 ...)
    VALUES (값1, 값2, 값3 ...)
    ;
    
    -칼럼 순서는 마음대로 해도 됨
    -모든 칼럼을 쓸 필요는 없음 (NULL 값으로 들어감)
    -모든 칼럼을 다 쓰는 경우에는, 칼럼명 생략 가능

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
--UPDATE ~ SET : UPDETE  : 데이터 수정
----------------------------------------------
/*
    [문법]
    UPDATE 테이블명 SET 칼럼명 = 값
    WHERE 칼럼1 연산자 비교값1
    AND 칼럼2 연산자 비교값2
    OR 칼럼3 연산자 비교값3
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
--DELETE : DELETE : 데이터 삭제
----------------------------------------------
SELECT * FROM BONUS;
SELECT * FROM EMP;

DELETE FROM BONUS; --BONUS 테이블의 모든 ROW 삭제
DELETE FROM BONUS WHERE ENAME = 'SWY2';

DELETE FROM EMP WHERE ENAME = 'SWY';
DELETE FROM EMP WHERE EMPNO IN(7777, 8888, 1111, 9999);
