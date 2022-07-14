-- 제약조건


-- NOT NULL : NULL 값 허용하지 않음
CREATE TABLE ZZZ(
    ID VARCHAR2(100) NOT NULL
);
-- 테이블 생성 이후에도 제약조건 수정 가능
ALTER TABLE ZZZ MODIFY ID VARCHAR2(100) NOT NULL;



-- DEFUALT : 기본으로 들어갈 값
CREATE TABLE ZZZ(
      ID VARCHAR2(100) DEFAULT 'ADMIN'
);
-- 테이블 생성 이후에도 제약조건 수정 가능
ALTER TABLE ZZZ MODIFY ID VARCHAR2(100) DEFAULT 'HONGGILDONG';



-- CHECK : 체크 조건 검사를 통과해야만 데이터 저장 가능
CREATE TABLE ZZZ (
    ID VARCHAR2(100) CHECK(ID.LENGTH < 10)
);
-- 테이블 생성 이후에도 제약조건 수정 가능
ALTER TABLE ZZZ 
ADD CONSTRAINT ZZZIDCHECK
CHECK(ID.LENGTH < 10);


-- PRIMARYKEY : 기본키(식별자) --> NOT NULL, UNIQUE 포함
CREATE TABLE ZZZ(
    ID VARCHAR2(100) PRIMARY KEY
);

CREATE TABLE ZZZ(
    ID VARCHAR2(100),
    CONSTRAINT ZZZTBPK PRIMARY KEY(ID)
);

ALTER TABLE ZZZ
ADD CONSTRAINT ZZZTBK PRIMARY KEY(ID);



-- UNIQUE : 중복방지
CREATE TABLE ZZZ(
    ID VARCHAR2(100) UNIQUE
);

ALTER TABLE ZZZ
ADD CONSTRAINT ZZZTBIDUQ UNIQUE(ID);



-- FOREIGNKEY : 외래키 : 부모테이블의 기본키를 참조함
CREATE TABLE STUDENT(
      NO NUMBER PRIMARY KEY -- 이 기본키가 없다면 외래키를 생성할때 참조할 부모키(고유키)가 없다고 뜨기 때문에 기본키 설정을 해줘야됨.
    , NAME VARCHAR2(100)
);

CREATE TABLE SCORE(
      STD_NO NUMBER
    , GRADE CHAR(2),
    --STU_NO REFERENCES STUDENT'S NO
    CONSTRAINT STDFK FOREIGN KEY(STD_NO) REFERENCES STUDENT(NO) ON DELETE CASCADE --ON DELETE SET NULL --부모 테이블의 1번 ROW를 삭제하면 참조하고 있는 자식의 1번 ROW가 NULL이 된다.
                                                                --부모 테이블의 1번 ROW를 삭제하면 참조하고 있는 자식의 1번 ROW도 삭제된다.
);

DROP TABLE SCORE;
DROP TABLE STUDENT;

INSERT INTO STUDENT (NO, NAME)
VALUES(1, 'JAVA');
COMMIT;

INSERT INTO SCORE (STD_NO, GRADE)
VALUES(1, 'A');

-- 무결성 제약조건(C##KH.STDFK)이 위배되었습니다- 부모 키가 없습니다
--INSERT INTO SCORE (STD_NO, GRADE)
--VALUES(5, 'A');



DROP TABLE ZZZ;