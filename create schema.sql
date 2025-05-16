-- 계정 생성 후 데이터베이스 활용

-- 1) 새로운 ohgiraffers 계정 만들기
CREATE USER 'songpa'@'%' IDENTIFIED BY  'songpa'; 
	
-- 현재 존재하는 데이터베이스 확인
SHOW databases;

-- mysql 데이터베이스로 계정 정보 확인하기
USE mysql;	-- 기본 적으로 제공되는 mysql database

-- 현재 접속한 데이터 베이스의 테이블 목록을 확인한다.
show tables;

SELECT * FROM user;	


-- 데이터베이스(스키마) 생성
CREATE DATABASE menudb;


-- 이 데이터베이스의 모든 권한을 이 유저에게 주겠다.
GRANT ALL PRIVILEGES ON menudb.* TO 'songpa'@'%';	

SHOW GRANTS FOR 'songpa'@'%';


USE menudb;