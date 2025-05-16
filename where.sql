-- where 특정 조건에 맞는 레코드만 선택하는데 사용

SELECT  
    menu_name, menu_price, orderable_status
FROM
    tbl_menu
WHERE
    orderable_status = 'Y';
    
    
SELECT     menu_code, menu_name, orderable_status
FROM    tbl_menu
WHERE
    orderable_status != 'Y';
    
    
SELECT 
    menu_code, menu_name, menu_price
FROM
    tbl_menu
WHERE
    menu_price > 20000;  -- 비교연산자 사용 가능
    
SELECT 
    menu_name, menu_price, category_code, orderable_status
FROM
    tbl_menu
WHERE
    orderable_status = 'Y'
        AND category_code = 10;


SELECT 
    menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
FROM
    tbl_menu
WHERE
    menu_price > 5000 AND category_code = 10;
    

SELECT 
    menu_name, menu_price, category_code, orderable_status
FROM
    tbl_menu
WHERE
    orderable_status = 'Y'
        OR category_code = 10
ORDER BY category_code;


SELECT 
    menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
FROM
    tbl_menu
WHERE
    category_code = 4
        OR menu_price = 9000 AND menu_code > 10;
        

SELECT 
    menu_name, menu_price, category_code
FROM
    tbl_menu
WHERE
    menu_price BETWEEN 10000 AND 25000
ORDER BY menu_price;

-- Between
SELECT 
    menu_name, menu_price, category_code
FROM
    tbl_menu
WHERE
    menu_price not BETWEEN 10000 AND 25000
ORDER BY menu_price;


-- Like
SELECT 
    menu_name, menu_price
FROM
    tbl_menu
WHERE
    menu_name LIKE '%마늘%'
ORDER BY menu_name;


SELECT 
    menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
FROM
    tbl_menu
WHERE
    menu_price > 5000 AND category_code = 10
        AND menu_name LIKE '%갈치%';
        
        
SELECT 
    menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
FROM
    tbl_menu
WHERE
    menu_price > 5000 AND category_code = 10
        AND menu_name NOT LIKE '%갈치%';
        
-- in
SELECT 
    menu_name, category_code
FROM
    tbl_menu
WHERE
    category_code IN (4 , 5, 6)
ORDER BY category_code;

SELECT 
    menu_name, category_code
FROM
    tbl_menu
WHERE
    category_code NOT IN (4 , 5, 6)
ORDER BY category_code;



-- is null
SELECT 
    category_code, category_name, ref_category_code
FROM
    tbl_category
WHERE
    ref_category_code IS NULL; 
    
    
SELECT 
    category_code, category_name, ref_category_code
FROM
    tbl_category
WHERE
    ref_category_code IS NOT NULL; 
        
        
        
