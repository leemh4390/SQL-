#날짜 : 2022/08/24
#이름 : 이민혁
#내용 : 제 3장 데이터베이스 관리

#실습3-1
create database `java1_test_db`;
create user 'java1_test'@'%' identified by '1234'; 
grant all privileges on `java1_test_db`.* to 'java1_test'@'%';
flush privileges;

#실습3-2

