--트리거

CREATE OR REPLACE TRIGGER TRG_BOARD
AFTER INSERT ON BOARD
FOR EACH ROW
    BEGIN
        IF INSERTING THEN
        INSERT INTO BOARD_COPY(TITLE, CONTENT) VALUES(:NEW.TITLE, :NEW.CONTENT);
        END IF;
    END TRG_BOARD;
    

--테스트
INSERT INTO BOARD VALUES('111', '안녕하세요');