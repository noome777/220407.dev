-- 함수(문자열)

--SUBSTR
SELECT SUBSTR('ABCDEFGHIJK', 3, 5)
FROM DUAL;

SELECT *
FROM EMP
WHERE ENAME LIKE '%' || SUBSTR('ABCDEFGHIJK', 5, 1) || '%'
--WHERE ENAME LIKE '%E%' 윗줄이랑 똑가튼 거임
;

--CONCAT : 문자열 합치는 기능
SELECT CONCAT('ABC', '심원용')
FROM DUAL
;

--TRIM : 공백제거 
--LTRIM : 왼쪽 공백제거
--RTRIM : 오른쪽 공백 제거
SELECT TRIM ('           ABC            ') 
FROM DUAL
;

--LOWER : 소문자로 변경
--UPPER : 대문자로 변경
SELECT 'ABC'
FROM DUAL;

--REPLACE : 대체하다
SELECT REPLACE ('ABC', 'B', 'X')
FROM DUAL;

-- PAD : 원하는 사이즈 만큼 빈칸을 채워줌 (내가 원하는 문자로)
-- LPAD 
-- RPAD
SELECT LPAD('ABC', 5, '0') TEST
FROM DUAL;

-- INITCAP : 첫 글자를 대문자로 바꿔줌
SELECT INITCAP('ABC')
FROM DUAL;

-- INSTR : 특정 문자열이 몇 번째에 존재하는지 확인
SELECT INSTR('ABCDEFGKH12345KH12354', 'KH', 5, 2)
FROM DUAL;

--LENGTH : 문자열의 길이
SELECT LENGTH('ABC123zzz')
FROM DUAL;