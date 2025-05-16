-- AS 별칭 지어주기 (테이블, 컬럼 등의 이름을 지워줄 수 있음)
SELECT 
    menu_code AS 'code',
    menu_name AS 'name',
    menu_price AS 'price'
FROM
    tbl_menu
ORDER BY price;

SELECT 
    a.menu_code,
    a.menu_name,
    a.menu_price
FROM
    tbl_menu AS a -- 테이블 별칭은 AS 생략도 가능
ORDER BY a.category_code, a.menu_name;


-- join 두 개 이상의 테이블을 결합하는데 사용
-- 1. inner join (교집합 반환)
SELECT 
    a.menu_name, b.category_name
FROM
    tbl_menu a
        JOIN
    tbl_category b ON a.category_code = b.category_code;
    
SELECT 
    a.menu_name, b.category_name
FROM
    tbl_menu a
        JOIN
    tbl_category b USING (category_code);   
    
    
-- left join
SELECT 
    a.category_name, b.menu_name
FROM
    tbl_category a
        LEFT JOIN
    tbl_menu b ON a.category_code = b.category_code;
    
-- right join
SELECT 
    a.category_name, b.menu_name
FROM
    tbl_category a
        RIGHT JOIN
    tbl_menu b ON a.category_code = b.category_code;
    