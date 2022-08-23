#날짜 : 2022/08/23
#이름 : 이민혁
#내용 : 제 2장 테이블 제약조건과 수정

#실습 2-1

create table `user2` (
		`uid`  varchar(20) primary key,
		`name` varchar(10),
        `hp`   char(13),
        `age`  tinyint
);

#실습 2-2
insert into `User2` values ('a101', '김유신', '010-1234-1001', 25);
insert into `User2` values ('a102', '김춘추', '010-1234-1002', 23);

select * from `user2`;
drop table `user3`;

#실습 2-3

create table `user3` (
		`uid`  varchar(20) primary key,
		`name` varchar(10),
        `hp`   char(13) unique,
        `age`  tinyint
);

#실습 2-4

insert into `User2` values ('a101', '김유신', '010-1234-1003', 25);
insert into `User2` values ('a101', '김유신', '010-1234-1003', 25);
insert into `User2` values ('a102', '김춘추', '010-1234-1002', 23);

#실습 2-5

create table `Parent` (
	`pid`	varchar(10) primary key,
	`name`	varchar(10),
	`hp`	char(13) unique
);

create table `Child` (
	`cid` 	varchar(10) primary key, 
    `name`	varchar(10),
    `hp`	char(13) unique,
    `pid` 	varchar(13),
    foreign key (`pid`) references `Parent` (`pid`)
);


insert into `Parent` values ('p101', '이성계', '010-1234-1111');
insert into `Child` values ('c101','이방원','010-1234-1001','101');

#실습 2-6

create table `User4` (
		`seq`	int primary key auto_increment,
		`name` 	 varchar(10) ,
		`gender` tinyint,
		`age`	 tinyint,
		`addr`	 varchar(255)        
);

drop table `user4`;

insert into `User4` (`name`, `gender`, `age`, `addr`) values ('김유신', 1, 25, '김해시');
insert into `User4` (`name`, `gender`, `age`, `addr`) values ('김춘추', 1, 23, '김해시');
insert into `User4` (`name`, `gender`, `age`, `addr`) values ('신사임당', 2, 27, '강릉시');
delete from `User4` Where `name`='신사임당';

#실습 2-7

create table `User5` (
		`name` 	 varchar(10) not null,
		`gender` tinyint,
		`age`	 tinyint default 1,
		`addr`	 varchar(255)        
);

insert into `User5` set `name`='김유신';
insert into `User5` set `name`='김춘추', `addr`='부산시';

drop table `user5`;

#실습 2-8
#실습 2-9
#실습 2-10
#실습 2-11
#실습 2-12
#실습 2-13
#실습 2-14
#실습 2-15
#실습 2-16
