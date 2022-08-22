#날짜 : 2022/08/22
#이름 : 이민혁
#내용 : 제 1장 SQL 기초

#실습 1-1
CREATE DATABASE `UserDB`;
DROP DATABASE `UserDB`;

# 한 줄 실행하는법 
# 마우스 커서 대고 execute 실행(단축키 컨트롤 + 엔터)
# 마우스 드래그 후 execute

#실습 1-2

CREATE TABLE `User1` (
	`uid` 	VARCHAR(10),
	`name` 	VARCHAR(10),
	`hp`	CHAR(13),
	`age`	INT
); 

DROP TABLE `User1`;

#실습 1-3

INSERT INTO `User1` VALUES ("A101", "김유신", "010-1234-1111", 25);
INSERT INTO `User1` VALUES ("A102", "김춘추", "010-1234-2222", 23);
INSERT INTO `User1` VALUES ("A103", "장보고", "010-1234-3333", 32);
INSERT INTO `User1` (`uid`, `name`,`age`) VALUES ("A104", "강감찬", 45);
INSERT INTO `User1` SET `uid`='A105', `name`='이순신', `hp`='010-1234-5555';


#실습 1-4

SELECT * FROM `User1`;
SELECT * FROM `User1` WHERE `uid`='A101';
SELECT `uid`, `name`, `age` FROM `User1`;

UPDATE `User1` SET `hp`='010-1234-4444' WHERE `uid`='A104';
UPDATE `User1` SET `age`='51' WHERE `uid`='A105';
UPDATE `User1` SET `hp`='010-1234-1001', `age`= 27 WHERE `uid`='A101';

#실습 1-5

DELETE FROM `User1` WHERE `uid`='A101';
DELETE FROM `User1` WHERE `uid`='A102' AND `age`=25;
DELETE FROM `User1` WHERE `age`>=30;
#실습 1-6
#실습 1-7
#실습 1-8
#실습 1-9


