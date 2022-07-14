--DDL

--테이블 생성
--칼럼에 공백이 있을 시, ""로 묶어주면 사용 가능
--예약어를 칼럼명으로 사용하고 싶으면 ""로 처리
CREATE TABLE KH_MEMBER(
    NAME VARCHAR2(10)
   ,AGE NUMBER
);

--뒤늦게 테이블에 칼럼 추가 (DDL)
ALTER TABLE KH_MEMBER ADD EMAIL VARCHAR2(100);

SELECT * FROM KH_MEMBER;

--테이블 칼럼 삭제
ALTER TABLE KH_MEMBER DROP COLUMN EMAIL;

--칼럼 수정하기
--조건에 맞지 않는 데이터가 이미 들어있다면, 수정이 불가능함
ALTER TABLE KH_MEMBER MODIFY NAME VARCHAR(2);

--데이터 추가하기
INSERT INTO KH_MEMBER (NAME, AGE)
VALUES ('이아름', 24);
COMMIT;

--테이블 삭제하기
DROP TABLE KH_MEMBER;
