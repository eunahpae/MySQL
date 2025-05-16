-- BUILD IN Functions

SELECT ASCII('A')문자열을 이어붙이는 함수

SELECT CONCAT('호랑이','돼지');
SELECT CONCAT_WS(',', '호랑이', '돼지');
SELECT CONCAT_WS('-', '2024', '05', '30');


-- ELT(위치, 문자열1, 문자열2, ...... ) 
-- FIELD(찾을문자열, 문자열1, 문자열2, ...... )
-- FIND_IN_SET(찾을 문자열, 문자열 리스트....) 
-- INSTR(기존문자열, 부분문자열)
-- LOCATE(부분문자열, 기준문자열)

SELECT ELT(2,'사과','딸기','바나나'); -- 해당 위치의 문자열 반환
SELECT FIELD('딸기','사과','딸기','바나나'); -- 찾을 문자열 위치 반환
SELECT FIND_IN_SET('바나나','사과,딸기,바나나'); -- 찾을 문자열의 위치 반환
SELECT INSTR('사과딸기바나나','딸기'); -- 찾을 문자열에서 부분 문자열의 시작 위치 반환
SELECT LOCATE('딸기', '사과딸기바나나') INSTR과 순서만 다름

-- FORMAT(숫자, 소수점, 자릿수)
SELECT FORMAT(123123123123.346443, 3);

-- BIN(2)  OCT(8)  HEX(16)
SELECT BIN(65), OCT(65), HEX(65);


-- INSERT(기준 문자열, 위치, 길이, 삽입할 문자열);
SELECT INSERT('내 이름은 아무개입니다.',7,3,'홍길동');


-- LEFT(문자열, 길이)  RIGHT(문자열, 길이)
SELECT LEFT('HELLO WORLD',3), RIGHT('HELLO WORLD', 3);



-- UPPER(문자열), LOWER(문자열)
SELECT LOWER('Hello World'), UPPER('Hello World');


-- LPAD(문자열,길이,채울문자열) RPAD(문자열,길이,채울문자열)
SELECT LPAD('왼쪽',6,'@'), RPAD('오른쪽',6,'@');

-- LTRIM(문자열),  RTRIM(문자열)
SELECT LTRIM('     왼쪽'), RTRIM('오른쪽      ');

-- TRIM(문자열)
SELECT TRIM('   MYSQL   ');
SELECT TRIM(BOTH '@' FROM '@@@MYSQL@@@');
-- LEADING(앞), BOTH(양쪽), TRAILNG


-- REPEAT(문자열, 횟수)
SELECT REPEAT('MYSQL',3);


-- REPLACE(문자열, 찾을 문자열, 바꿀 문자열)
SELECT REPLACE('마이SQL', '마이', 'MY');

-- REVERSE(문자열)
SELECT REVERSE('stressed');

-- SPACE(길이)
SELECT CONCAT('제 이름은', SPACE(5), '이고 나이는',SPACE(3),'세입니다.');

-- SUBSTRING(문자열, 시작위치, 길이)
SELECT SUBSTRING('안녕하세요 반갑습니다',7,2);
SELECT SUBSTRING('안녕하세요 반갑습니다',7);

-- SUBSTRING_INDEX(문자열, 구분자, 횟수)
SELECT SUBSTRING_INDEX('hong.test@gmail.com','.',1);
SELECT SUBSTRING_INDEX('hong.test@gmail.com','.',2);



-- 수학 관련 함수

-- ABS(숫자)
SELECT ABS(-123);


-- CEILING(숫자) 올림, FLOOR(숫자) 버림, ROUND(숫자) 반올림
SELECT CEILING(1234.56), FLOOR(1234.56), ROUND(1234.56);

-- CONV(숫자, 원래 진수, 변환할 진수)
SELECT CONV('A', 16, 10), CONV(1010, 2, 8);

-- POW(숫자1, 숫자2), SQRT(숫자)
SELECT POW(2, 4), SQRT(16);


-- RAND()
-- 0이상 1미만의 실수
-- M과 N 사이의 임의의 정수를 구하려면
SELECT RAND(), FLOOR(RAND() * (11 - 1) + 1);


-- SIGN(숫자)
SELECT SIGN(10.3), SIGN(0),SIGN(-10.1);


-- TRUNCATE(숫자, 정수)
-- 소수점을 기준으로 정수 위치까지 구하고 나머지는 버린다.
SELECT TRUNCATE(12345.12345, 2), TRUNCATE(12345.12345, -2) ;



-- ADDDATE(날짜, 차이)  - 더해주기
-- SUBDATE(날짜, 차이)  - 뺴주기
SELECT ADDDATE('2024-05-31',INTERVAL 30 DAY);
SELECT SUBDATE('2024-05-31',INTERVAL 30 DAY);

-- ADDTIME(날짜/시간, 시간)  - 더해주기
-- SUBTIME(날짜/시간, 시간, 차이)  - 뺴주기
SELECT ADDTIME('2024-05-31 09:00:00','1:0:1');
SELECT SUBTIME('2024-05-31 09:00:00','1:0:1');

-- CURDATE(), CURTIME(), NOW(), SYSDATE()
SELECT CURDATE(), CURTIME(), NOW(), SYSDATE();

SELECT YEAR(CURDATE()), MONTH(CURDATE()),DAYOFMONTH(CURDATE());
SELECT HOUR(CURTIME()), MINUTE(CURTIME()),SECOND(CURTIME()), MICROSECOND((CURRENT_TIME()));

SELECT DATE(NOW()), TIME(NOW());


-- DATEDIFF(날짜1, 날짜2), TIMEDIFF(날짜또는시간1, 날짜또는시간2)
SELECT DATEDIFF('2024-05-30',NOW());
SELECT TIMEDIFF('17:07:11','13:06:10');


-- DAYOFWEEK(날짜), MONTHNAME(월), DAYOFYEAR(날짜)
SELECT DAYOFWEEK(CURDATE());
SELECT MONTHNAME(CURDATE());
SELECT DAYOFYEAR(CURDATE());


-- LAST_DAY(날짜) - 해당월의 마지막 날짜
SELECT LAST_DAY('20240201');

-- MAKEDATE(연도, 정수) - 해당년도의 N번째 날짜
SELECT MAKEDATE(2024,32);

-- PERIOD_ADD(연월, 개월 수)
SELECT PERIOD_ADD(202305,6);

-- QUARTER(날짜) - 해당 날짜의 분기
SELECT QUARTER(CURDATE());

-- TIME_TO_SEC(시간)
SELECT TIME_TO_SEC('1:1:1');


