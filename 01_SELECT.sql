-- select 가장 기본적인 명령어. 데이터를 조회하는데 사용된다.

SELECT 
    *
FROM
    tbl_menu;
    
SELECT 
    menu_name
FROM
    tbl_menu;
    
SELECT 
    menu_code, menu_name, menu_price
FROM
    tbl_menu;
    
SELECT 6 + 3;
SELECT 6 * 3;

SELECT now();

-- 컬럼 별칭
select concat('홍','','길동') as name;
    
    