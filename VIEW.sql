-- VIEW

/*
	SELECT 문을 저장한 객체로, 가상 테이블 이라고 불린다.
	실질적인 데이터를 물리적으로 저장하고 있지 않고, 쿼리만 저장했지만
    테이블을 사용하는 것과 동일하게 사용할 수 있다.
    데이터를 쉽게 읽고 이해할 수 있도록 돕는 동시에 원본 데이터의 보안을 유지하는데 도움이 된다.
*/


-- VIEW 생성 후 조회

CREATE VIEW hansik AS
    SELECT 
        menu_code,
        menu_name,
        menu_price,
        category_code,
        orderable_status
    FROM
        tbl_menu
    WHERE
        category_code = 4;

SELECT 
    *
FROM
    hansik;
    
INSERT INTO tbl_menu VALUES (NULL, '식혜맛국밥',5500,4,'Y');

SELECT 
    *
FROM
    hansik;
    
    
-- VIEW 를 통한 DML
INSERT INTO hansik VALUES (99, '수정과맛국밥',5500,4,'Y');
SELECT 
    *
FROM
    tbl_menu;
    
    
UPDATE hansik 
SET 
    menu_name = '버터맛국밥',
    menu_price = 5700
WHERE
    menu_code = 99;
SELECT 
    *
FROM
    tbl_menu;
    

DELETE FROM hansik 
WHERE
    menu_code = 99;
  SELECT 
    *
FROM
    tbl_menu;
    
    
-- VIEW 로 DML 명령어 조작이 불가능한 경우
/*
	1. 뷰 정의에 포함되지 않은 컬럼을 조작하는 경우
    2. 뷰에 포함되지 않은 컬럼 중에 베이스가 되는 컬럼이 not null 제약조건에 지정된 경우
    3. 산술 표현식이 정의된 경우
    4. join 을 이용해 여러 테이블을 연결한 경우
    5. DISTINCT 를 포함한 경우
    6. 그룹함수나 GROUP BY 절을 포함한 경우
*/    

DROP VIEW hansik;

CREATE OR REPLACE VIEW hansik AS
    SELECT 
        menu_code AS '메뉴코드',
        menu_name AS '메뉴명',
        category_name AS '카테고리명'
    FROM
        tbl_menu a
        JOIN tbl_category b ON a.category_code = b.category_code
    WHERE
        b.category_name = '한식';

SELECT 
    *
FROM
    hansik;
