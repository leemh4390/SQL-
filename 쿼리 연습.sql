create table `User1`(
		`uid` varchar(10),
        `name` varchar(10),
        `hp` char(13),
        `age` int
);
drop table `User1`;

insert into `User1` values ('A101', '김유신', '010-1234-1111', 25);
insert into `User1` values ('A102', '김춘추', '010-1234-2222', 23);
insert into `User1` values ('A103', '장보고', '010-1234-3333', 32);
insert into `User1` (`uid`, `name`, `age`) values ('A104', '강감찬',45);
insert into `User1` SET `uid`='A105', `name`='이순신', `hp`='010-1234-5555';

select * from `User1`;
select * from `User1` Where `uid`='A101';
select * from `User1` Where `name`='김춘추';
select * from `User1` Where `age`< 30;
select * from `User1` Where `age`>='30';
select `uid`, `name`, `age` From `User1`;

Update `User1` set `hp`='010-1234-4444', `uid`='A104';
Update `User1` set `age`=51 Where `uid`='A105';
Update `User1` SET `hp`='010-1234-0001', `age`=27 WHERE `uid`='A101';

delete from `User1` where `uid`='A101';
delete from `User1` where `uid`='A102' And `age`=25;
delete from `User1` Where `age` >= 30;



