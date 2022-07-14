--ROWNUM

--테이블명.컬럼명 (테이블명 생략 가능)   
SELECT ZZZ.EMPNO, ZZZ.ENAME, ZZZ.MGR
FROM EMP ZZZ
;

--ROWNUM : 행(==ROW ==RECORD) 번호를 붙여줌
SELECT ROWNUM RNUM, E.*
FROM EMP E
WHERE ROWNUM < 10
--WHERE RNUM > 10 -- 두번째도 첫번째로 매겨져서
;

