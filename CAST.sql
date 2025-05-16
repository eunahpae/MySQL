-- CAST Functions

/*
	명시적 형변환
		CAST (EXPRESSION AS 데이터 형식[(길이)])
        CONVERT (EXPRESSION, 데이터 형식[(길이)])
*/

USE menudb;
SELECT 
    AVG(menu_price)
FROM
    tbl_menu;
    
SELECT CAST(AVG(menu_price) AS SIGNED INTEGER) AS '평균 메뉴 가격' FROM tbl_menu;
SELECT CONVERT(AVG(menu_price), SIGNED INTEGER) AS '평균 메뉴 가격' FROM tbl_menu;

SELECT CAST('2023$5$30' AS DATE);
SELECT CAST('2023/5/30' AS DATE);
SELECT CAST('2023%5%30' AS DATE);
SELECT CAST('2023@5@30' AS DATE);

