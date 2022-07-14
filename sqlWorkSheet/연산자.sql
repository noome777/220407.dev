--DML (SELECT), 연산자

--연산자 연습용 테이블 생성
CREATE TABLE TEMP_TB(
    NAME VARCHAR2(100)
,   AGE NUMBER
);

--조회
SELECT * FROM TEMP_TB;


--데이터 넣기
INSERT INTO TEMP_TB VALUES('HELLO', 20);
INSERT INTO TEMP_TB VALUES('CHULSSU', 2);
INSERT INTO TEMP_TB VALUES('AREUM', 24);
COMMIT;

-- 숫자 더하기 +
SELECT NAME "이름", AGE+1 "내년나이" FROM TEMP_TB;
SELECT NAME AGE, AGE*2 FROM TEMP_TB;
SELECT NAME, AGE, AGE+3 내가만든칼럼 FROM TEMP_TB;
SELECT NAME, AGE, AGE+3" 내가 만든 칼럼" FROM TEMP_TB;
SELECT NAME, AGE, 'ZZZ' FROM TEMP_TB;

-- 문자열 더하기
SELECT NAME, AGE FROM TEMP_TB;
SELECT NAME, AGE, NAME 내가만든컬럼 FROM TEMP_TB;
SELECT NAME, AGE, NAME+1 내가만든컬럼 FROM TEMP_TB;--실패
SELECT NAME, AGE, 1+1 내가만든컬럼 FROM TEMP_TB;
SELECT NAME, AGE, '1'+1 내가만든컬럼 FROM TEMP_TB;--숫자+문자 => 숫자
SELECT NAME, AGE, '1' || '1' 내가만든컬럼 FROM TEMP_TB;--숫자+문자를 문자열연산자로 연산 => 문자
SELECT NAME, AGE, 7 내가만든컬럼 FROM TEMP_TB; --숫자는 칼럼 오른쪽 정렬
SELECT NAME, AGE, '7' 내가만든컬럼 FROM TEMP_TB;--문자는 칼럼 왼쪽에 정렬
SELECT NAME, AGE, NAME+'ZZZ'  내가만든컬럼 FROM TEMP_TB;--실패
SELECT NAME, AGE, NAME || 'ㅋㅋㅋ'  내가만든컬럼 FROM TEMP_TB;--문자열 더하기 연산자
SELECT NAME, AGE, CONCAT(NAME, 'ZZZ')  내가만든컬럼 FROM TEMP_TB;--CONCAT() 함수 사용

SELECT NAME || '(' || AGE || ')' "이름(나이)" FROM TEMP_TB;
--NAME + 1 : 실패
--NAME || 1 : 성공

SELECT SYSDATE FROM DUAL;

--연산자
/*
    = : 같다
    != . ^=, <>             : 같지않다
    >, <, >= ,<=            : 대소비교
    IS NULL                 : NULL 인지 확인
    IS NOT NULL             : NULL이 아닌지 확인
    
    NOT                     : 부정연산자
    AND                     : 그리고(==)
    OR                      :또는
    BETWEEN A AND B         : A와 B사이인지 확인
    IN, NOT IN              : 포함되는지 확인
    LIKE, NOT LIKE          : 문자열 비교
    %                       : 0개 이상의 문자열
    _                       : 한글자
*/

SELECT * FROM TEMP_TB;

SELECT NAME, AGE FROM TEMP_TB; --모든 행 출력

--나이가 20인 ROW만 출력
SELECT NAME, AGE 
FROM TEMP_TB 
WHERE AGE = 20
;

--나이가 20인 아닌 ROW만 출력
SELECT NAME, AGE 
FROM TEMP_TB 
WHERE AGE != 20
--WHERE AGE ^= 20
--WHERE AGE <> 20
;

--나이가 20 초과인 ROW 출력
SELECT NAME, AGE 
FROM TEMP_TB
WHERE AGE > 20
;

--AGE가 NULL인 데이터
--INSERT INTO TEMP_TB(NAME, AGE) VALUES('LAR', NULL);
INSERT INTO TEMP_TB(NAME) VALUES('LAR');


--AGE 칼럼의 값이 NULL인 ROW만 출력
SELECT NAME, AGE 
FROM TEMP_TB
--WHERE AGE IS NULL //NULL과 비교할 떄는 =가 아닌 IS NULL을 사용해야 NULL값 확인 가능
WHERE AGE IS NOT NULL 
;

--AGE가 19 초과이면서, 21 이하인 ROW 출력
SELECT NAME, AGE
FROM TEMP_TB
--WHERE 19 < AGE AND AGE< 21
;

--AGE가 20 이하이거나, 22이상인 ROW 출력
SELECT NAME, AGE 
FROM TEMP_TB
WHERE AGE <=20 OR AGE >= 22
;

--AGE가  21-22사이에 해당하는 ROW 출력
SELECT NAME, AGE
FROM TEMP_TB
WHERE AGE BETWEEN 21 AND 22
;

--NAME이 'AAA'인 ROW를 출력
SELECT NAME, AGE
FROM TEMP_TB
--WHERE NAME = 'AAA' OR NAME='BBB'
--WHERE NAME IN('AAA','BBB')
WHERE NAME NOT IN('AAA', 'BBB')
;

--이름이 S로 시작하는 ROW를 출력
SELECT NAME, AGE
FROM TEMP_TB
--WHERE NAME LIKE 'S%'
--WHERE NAME LIKE '%Q'
WHERE NAME NOT LIKE 'A%C';
;

--이름이 김으로 시작하는 ROW를 출력(자릿수 지정)
SELECT NAME, AGE 
FROM TEMP_TB
WHERE NAME LIKE '김%'
;

--이름이 김으로 시작하는 세글자 이름을 가진 ROW를 출력
SELECT NAME, AGE 
FROM TEMP_TB
WHERE NAME LIKE '김__'
;

--정규식 REGULAR EXPRESSION

--데이터 넣기
INSERT INTO TEMP_TB(NAME) VALUES('ABC');
INSERT INTO TEMP_TB(NAME) VALUES('SSS');
INSERT INTO TEMP_TB(NAME) VALUES('QQQ');
INSERT INTO TEMP_TB(NAME) VALUES('SIM');
INSERT INTO TEMP_TB(NAME) VALUES('KIM');
INSERT INTO TEMP_TB(NAME) VALUES('홍길동');
INSERT INTO TEMP_TB(NAME) VALUES('홍수환');
INSERT INTO TEMP_TB(NAME) VALUES('장정구');
INSERT INTO TEMP_TB(NAME) VALUES('김철수');
INSERT INTO TEMP_TB(NAME) VALUES('김수한무거북이와두루미');
SELECT * FROM TEMP_TB;
--COMMIT;