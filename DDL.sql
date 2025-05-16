-- DDL (Data Definition Language)
-- 데이터베이스의 스키마를 정의하거나 수정하는 데 사용되는 것.


-- CREATE
-- 테이블 생성을 위한 구문.
-- IF NOT EXISTS 를 적용하면 기존에 존재하는 테이블 이더라도 에러가 발생하지 않는다.

CREATE TABLE IF NOT EXISTS tb1 (
	pk int PRIMARY KEY,
    fk int,
    col1 VARCHAR(255),
    CHECK(col1 IN ('Y','N'))
)ENGINE = InnoDB;

DESCRIBE tb1;

INSERT INTO tb1 VALUES(1,10,'Y');

SELECT * FROM tb1;


CREATE TABLE IF NOT EXISTS tb2 (
	pk INT AUTO_INCREMENT PRIMARY KEY,
    fk INT,
    col1 VARCHAR(255),
    CHECK(col1 IN ('Y','N'))
)ENGINE = INNODB;

DESCRIBE tb2;

INSERT INTO tb2 VALUES (null,10,'Y');
INSERT INTO tb2 VALUES (null,20,'Y');
INSERT INTO tb2 VALUES (null,30,'Y');

SELECT * FROM tb2;


-- ALTER 
-- 테이블에 추가, 변경, 삭제 하는 모든 것은 ALTER 명령어를 사용해 적용한다.
-- 종류가 너무 많고 복잡하므로 대표적인 것들 살펴본다.

ALTER TABLE tb2
ADD col2 INT;

DESCRIBE tb2;


ALTER TABLE tb2
DROP COLUMN col2;

DESCRIBE tb2;


ALTER TABLE tb2
CHANGE COLUMN fk change_fk INT NOT NULL;

DESCRIBE tb2;



ALTER TABLE tb2
MODIFY pk INT;

ALTER TABLE tb2
DROP PRIMARY KEY;

DESCRIBE tb2;

-- DROP 
-- 테이블을 삭제하기 위한 구문

DROP TABLE IF EXISTS tb1, tb2;