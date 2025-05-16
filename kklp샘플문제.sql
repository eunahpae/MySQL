-- Q. 모든 날짜에 비행을 예약한 남자 손님의 이름, 전화번호, 성별, 출발공항, 도착공항, 출발일시, 항공사이름을 구하라. 
-- 컬럼은 각각 NAME,PHONE, GENDER 로 설정하고 이후는 컬럼명대로 출력되게 하라. 출발일시 기준 오름차순 정렬
SELECT 
    p.passenger_name AS NAME,
    p.passenger_phone AS PHONE,
    p.gender AS GENDER,
    f.departure_airport,
    f.arrival_airport,
    f.departure_date,
    a.airline_name
FROM
    flight_schedule f
        JOIN
    airplane a ON f.airplane_code = a.airplane_code
        JOIN
    reservation r ON f.schedule_code = r.schedule_code
        JOIN
    passenger p ON p.passenger_code = r.passenger_code
WHERE
    gender = '남'
ORDER BY f.departure_airport ASC;
    
-- Q. 2024-06-03 에 출발하는 예약건의 모든 손님 이름과 전화번호를 구하고 손님의 이름 기준으로 오름차순 정렬하는 쿼리
SELECT 
    f.departure_date,
    p.passenger_name AS NAME,
    p.passenger_phone AS PHONE
FROM
    flight_schedule f
        JOIN
    reservation r ON f.schedule_code = r.schedule_code
        JOIN
    passenger p ON p.passenger_code = r.passenger_code
WHERE
    f.departure_date LIKE '%2024-06-03%'
ORDER BY p.passenger_name ASC;
    
-- Q.모델명에 'Boeing'이 들어가는 비행기의 비행스케줄표를 구하시오
SELECT 
    a.model, f.*
FROM
    flight_schedule f
        JOIN
    airplane a ON f.airplane_code = a.airplane_code
WHERE
    a.model LIKE 'Boeing%';