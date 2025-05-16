TRUNCATE TABLE passenger;

INSERT INTO passenger (passenger_id, passenger_pw, passenger_name, passenger_phone, gender, passenger_SSN, joined) VALUES
('john123', 'password1', '홍길동', '010-1234-5678', '남', '123456-7890123', NOW()),
('alice456', 'password2', '김영희', '010-2345-6789', '여', '456789-0123456', NOW()),
('mike789', 'password3', '박철수', '010-3456-7890', '남', '789012-3456789', NOW()),
('sarah101', 'password4', '이미자', '010-4567-8901', '여', '101112-1314151', NOW()),
('kevin112', 'password5', '정수빈', '010-5678-9012', '남', '112131-4151516', NOW()),
('emily131', 'password6', '최영미', '010-6789-0123', '여', '131415-1617181', NOW()),
('david141', 'password7', '송민준', '010-7890-1234', '남', '141516-1718191', NOW()),
('lisa515', 'password8', '김지연', '010-8901-2345', '여', '515617-1819201', NOW()),
('james161', 'password9', '이준호', '010-9012-3456', '남', '161718-1920212', NOW()),
('sophia171', 'password10', '장미란', '010-0123-4567', '여', '171819-2021222', NOW());

INSERT INTO seat_class (class_name, price) VALUES('First', 500000),('Business ', 200000),('Economy ', 50000);

INSERT INTO seat (class_code, seat_number, availability) VALUES
(1, 'A01', true),(1,'A02', true),(1,'A03', true),(1,'A04', true),
(2,'B01', true),(2,'B02', true),(2,'B03', true),(2,'B04', true),
(3,'C01', true),(3,'C02', true),(3,'C03', true),(3,'C04', true);

INSERT INTO airplane (model,capacity,airline_name) VALUES ('KKLP707',12,'케이케이엘피항공'),('KKLP808',12,'송파항공') ,('KKLP909',12,'김김이배항공');  


INSERT INTO flight_schedule (airplane_code, departure_airport, arrival_airport, departure_date, arrival_date, flight_time) 
VALUES
(1, 'JFK', 'LAX', '2024-06-01 08:00:00', '2024-06-01 11:00:00', '03:00:00'),
(1, 'LAX', 'JFK', '2024-06-01 12:00:00', '2024-06-01 15:00:00', '03:00:00'),
(2, 'LHR', 'CDG', '2024-06-02 09:00:00', '2024-06-02 11:30:00', '02:30:00'),
(2, 'CDG', 'LHR', '2024-06-02 12:30:00', '2024-06-02 15:00:00', '02:30:00'),
(3, 'SFO', 'ORD', '2024-06-03 10:00:00', '2024-06-03 13:30:00', '04:30:00'),
(3, 'ORD', 'SFO', '2024-06-03 14:30:00', '2024-06-03 18:00:00', '04:30:00'),
(1, 'HND', 'ICN', '2024-06-04 08:30:00', '2024-06-04 11:30:00', '02:00:00'),
(1, 'ICN', 'HND', '2024-06-04 12:30:00', '2024-06-04 15:30:00', '02:00:00'),
(2, 'AMS', 'FRA', '2024-06-05 11:00:00', '2024-06-05 12:30:00', '01:30:00'),
(3, 'FRA', 'AMS', '2024-06-05 13:30:00', '2024-06-05 15:00:00', '01:30:00');



INSERT INTO reservation (passenger_code, schedule_code, seat_code, payment_method) 
VALUES
(1, 1, 1, 'Credit Card'),
(2, 2, 2, 'PayPal'),
(3, 3, 3, 'Credit Card'),
(4, 4, 4, 'Credit Card'),
(5, 5, 5, 'PayPal'),
(6, 6, 6, 'Credit Card'),
(7, 7, 7, 'PayPal'),
(8, 8, 8, 'Credit Card'),
(9, 9, 9, 'Credit Card'),
(10, 10, 10, 'PayPal');