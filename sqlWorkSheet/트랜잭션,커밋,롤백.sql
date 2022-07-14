-------------------------------------------------------
-- 트랜잭션 (쪼갤 수 없는 업무 처리의 최소 단위)
-------------------------------------------------------
/*
    EX) 계좌이체 : 내 통장의 돈을 다른 통장으로 옮기는 것
    1. 이체할 금액 확인
    2. 내 통장 잔고 확인
    1. 내 통장 금액 변경
    2. 상대방 통장 잔고 변경
    --> 두 가지의 업무가 한번에 동시에 처리되어야 한다. 하나의 트랙잭션이 실패하면 나머지 작업도 취소(롤백) 하여야 한다. (TRANSACTION)
*/


--커밋
--롤백 --> 마지막으로 커밋한 지점으로 DB의 상태가 복원이 된다.



--트랜잭션 테스트를 위한 임시 테이블 생성
CREATE TABLE MYTABLE(
    NAME CHAR(9)
   ,AGE NUMBER
);

INSERT INTO MYTABLE(NAME, AGE) VALUES ('ABC', 20);
COMMIT;

INSERT INTO MYTABLE VALUES ('ZZZ', 22);
ROLLBACK;

SELECT * FROM MYTABLE;

DROP TABLE MYTABLE;