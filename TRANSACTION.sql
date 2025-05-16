-- TRANSACTION 
-- 데이터베이스에서 한 번에 수행되는 작업의 단위
-- 시작, 진행, 종료 단계를 가지며 중간에 오류가 발생하면 ROLLBACK을 수행하고
-- 제대로 반영하기 위해서는 COMMIT 을 진행한다.

SET autocommit = 0;

START TRANSACTION;

SELECT * FROM tbl_menu;
INSERT INTO tbl_menu VALUES (null,'바나나해장국',8500,4,'Y');
UPDATE tbl_menu SET menu_name = '수정된 메뉴' WHERE menu_code = 5;
DELETE FROM tbl_menu WHERE menu_code = 7;

ROLLBACK;


SET autocommit = 1;