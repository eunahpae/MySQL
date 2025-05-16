/* order by */ 
-- order by 절은 select 문과 함께 사용하며 결과 집합을 특정 열이나 열들의 값에 따라 정렬하는데 사용

SELECT 
    menu_code, menu_name, menu_price
FROM
    tbl_menu
ORDER BY menu_price ASC; -- 오름차순 ASC 는 default 값으로 생략도 가능


SELECT 
    menu_code, menu_name, menu_price
FROM
    tbl_menu
ORDER BY menu_price DESC; -- 내림차순 DESC


SELECT 
    menu_code, menu_name, menu_price
FROM
    tbl_menu
ORDER BY menu_price DESC , menu_name ASC;


SELECT 
    menu_code, menu_name, menu_code * menu_price
FROM
    tbl_menu
ORDER BY menu_code * menu_price DESC;


SELECT 
    menu_code, menu_price, (menu_code * menu_price) AS multi
FROM
    tbl_menu
ORDER BY multi DESC;

SELECT field('a','a','b','c'); -- 첫번째 문자가 몇 번째 있는지

SELECT 
    FIELD(orderable_status, 'N', 'Y')
FROM
    tbl_menu;

SELECT 
    menu_name, orderable_status
FROM
    tbl_menu
ORDER BY FIELD(orderable_status, 'N', 'Y');


SELECT 
    category_code, category_name, ref_category_code
FROM
    tbl_category
ORDER BY ref_category_code DESC;



SELECT 
    category_code, category_name, ref_category_code
FROM
    tbl_category
ORDER BY ref_category_code IS NULL;

SELECT 
    category_code, category_name, ref_category_code
FROM
    tbl_category
ORDER BY ref_category_code desc;

SELECT 
    category_code, category_name, ref_category_code
FROM
    tbl_category
ORDER BY ref_category_code IS NULL DESC , ref_category_code DESC;