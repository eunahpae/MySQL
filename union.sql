-- union 결과값을 합쳐주지만, 중복값 제외
SELECT 
    *
FROM
    tbl_menu
WHERE
    category_code = 10 
UNION SELECT 
    *
FROM
    tbl_menu
WHERE
    menu_price < 9000;
    
    
-- union all 중복값까지 전부 합쳐서 보여줌
SELECT 
    *
FROM
    tbl_menu
WHERE
    category_code = 10 
UNION ALL SELECT 
    *
FROM
    tbl_menu
WHERE
    menu_price < 9000;