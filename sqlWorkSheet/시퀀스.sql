-- 시퀀스

-- 생성
DROP SEQUENCE MEMBER_NO_SEQ; --시퀀스 삭제

CREATE SEQUENCE MEMBER_NO_SEQ
INCREMENT BY 1 -- 증감숫자
START WITH 1 -- 시작값
MINVALUE 1 --최소값
MAXVALUE 999 --최대값
NOCYCLE --CYCLE --순환 여부 NOCYCLE은 999다음 1로 돌아가지 않는다. CYCLE은 1로 돌아간다.
NOCACHE --CACHE 20 --CACHE 100 -- 캐시 여부 (사이즈) 20개의 값을 미리 시퀀스가 준비해둔다. 컴터 껐다가 키면 1~20까지 가지고 있던게 날라가서 21부터 시퀀스가 시작된다.
;       --NOCACHE로 하면 껐다가 켜도 7에서 8부터 다시 시퀀스가 시작된다. NOCACHE 대신 CACHE를 쓰는 이유는 성능때문이다.


-- 사용
SELECT ZZZSEQ2.NEXTVAL --CURRVAL
FROM DUAL;

SELECT MEMBER_NO_SEQ.NEXTVAL FROM DUAL;
SELECT MEMBER_NO_SEQ.CURRVAL FROM DUAL;


-- 수정
ALTER MEMBER_NO_SEQ
INCEMENT BY 2
MINVALUE -10
MAXVALUE 123
CYCLE
CACHE 100
;

