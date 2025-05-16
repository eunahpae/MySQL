DROP TABLE IF EXISTS passenger ;
CREATE TABLE passenger  (
    passenger_code INT AUTO_INCREMENT PRIMARY KEY,
    passenger_id VARCHAR(50) NOT NULL,
    passenger_pw VARCHAR(50) NOT NULL,
    passenger_name VARCHAR(50) NOT NULL,
    passenger_phone VARCHAR(50) NOT NULL,
    gender VARCHAR(3) CHECK (gender IN ('남' , '여')),
    passenger_SSN VARCHAR(50) NOT NULL,
    joined TIMESTAMP
)  ENGINE=INNODB;

DROP TABLE IF EXISTS airplane;
CREATE TABLE airplane (
    airplane_code INT AUTO_INCREMENT PRIMARY KEY,
    seat_code INT,
    model VARCHAR(50),
    capacity INT,
    airline_name VARCHAR(50)
)  ENGINE=INNODB;

ALTER TABLE airplane
  ADD FOREIGN KEY (seat_code) REFERENCES seat (seat_code);

DROP TABLE IF EXISTS flight_schedule;
CREATE TABLE flight_schedule (
    schedule_code INT AUTO_INCREMENT PRIMARY KEY,
    airplane_code INT NOT NULL,
    departure_airport VARCHAR(100) NOT NULL,
    arrival_airport VARCHAR(100) NOT NULL,
    departure_date DATETIME NOT NULL,
    arrival_date DATETIME NOT NULL,
    flight_time TIME NOT NULL
)  ENGINE=INNODB;

ALTER TABLE flight_schedule
  ADD FOREIGN KEY (airplane_code) REFERENCES airplane (airplane_code);

DROP TABLE IF EXISTS reservation;
CREATE TABLE reservation (
    reservation_code INT AUTO_INCREMENT PRIMARY KEY,
    passenger_code INT,
    schedule_code INT,
    seat_code INT,
    payment_method VARCHAR(100) NOT NULL
)  ENGINE=INNODB;

ALTER TABLE reservation
  ADD FOREIGN KEY (passenger_code) REFERENCES passenger (passenger_code);
ALTER TABLE reservation
  ADD FOREIGN KEY (seat_code) REFERENCES seat (seat_code);

DROP TABLE IF EXISTS seat;
CREATE TABLE seat (
    seat_code INT AUTO_INCREMENT PRIMARY KEY,
    schedule_code INT,
    seat_number VARCHAR(10) NOT NULL,
    class_code INT,
    availability BOOLEAN NOT NULL
)  ENGINE=INNODB;
ALTER TABLE seat
  ADD FOREIGN KEY (class_code) REFERENCES seat_class (class_code);
  
DROP TABLE IF EXISTS seat_class;
CREATE TABLE seat_class (
    class_code INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(10) NOT NULL,
    price INT NOT NULL
)  ENGINE=INNODB;

DROP TABLE IF EXISTS payment;
CREATE TABLE payment (
    pay_code INT AUTO_INCREMENT PRIMARY KEY,
    pay_method VARCHAR(50) NOT NULL,
    reservation_code INT
)  ENGINE=INNODB;

ALTER TABLE payment
  ADD FOREIGN KEY (reservation_code) REFERENCES reservation (reservation_code);
  