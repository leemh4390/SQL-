# 날짜 : 2022/08/24
# 이름 : 이민혁
# 내용 : 제 4장 SQL고급

create table `member`(
	`uid` varchar(10) primary key,
    `name` varchar(10) not null,
    `hp` varchar(13) unique not null,
    `pos` varchar(10) not null,
    `dep` int null,
    `rdate` datetime not null
);

insert into `member` values ('a101', '박혁거세', '010-1234-1001','부장',101,'2020-11-19');
insert into `member` values ('a102', '김유신', '010-1234-1002','차장',101,'2020-11-19');
insert into `member` values ('a103', '김춘추', '010-1234-1003','사원',101,'2020-11-19');
insert into `member` values ('a104', '장보고', '010-1234-1004','대리',102,'2020-11-19');
insert into `member` values ('a105', '강감찬', '010-1234-1005','과장',102,'2020-11-19');
insert into `member` values ('a106', '이성계', '010-1234-1006','차장',103,'2020-11-19');
insert into `member` values ('a107', '정철', '010-1234-1007','차장',103,'2020-11-19');
insert into `member` values ('a108', '이순신', '010-1234-1008','부장',104,'2020-11-19');
insert into `member` values ('a109', '허균', '010-1234-1009','부장',104,'2020-11-19');
insert into `member` values ('a110', '정약용', '010-1234-1010','사원',105,'2020-11-19');
insert into `member` values ('a111', '박지원', '010-1234-1011','사원',105,'2020-11-19');

select * from `member`;

CREATE TABLE `Department` (
	`depNo`	TINYINT PRIMARY KEY,
	`name`	VARCHAR(10) NOT NULL,
	`tel`	CHAR(12) NOT NULL
);

INSERT INTO `Department` VALUES (101, '영업1부', '051-512-1001');
INSERT INTO `Department` VALUES (102, '영업2부', '051-512-1002');
INSERT INTO `Department` VALUES (103, '영업3부', '051-512-1003');
INSERT INTO `Department` VALUES (104, '영업4부', '051-512-1004');
INSERT INTO `Department` VALUES (105, '영업5부', '051-512-1005');
INSERT INTO `Department` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `Department` VALUES (107, '인사부', '051-512-1007');
    
select * from `Depertment`;
 
create table `sales`(
	`seq` int auto_increment primary key,
    `uid` varchar(10) not null,
    `year` year not null,
    `month` int not null,
    `sale` int not null
);

insert into `sales` values (1,'a101',2018,1,'98100');
insert into `sales` values (2,'a102',2018,1,'136000');
insert into `sales` values (3,'a103',2018,1,'80100');
insert into `sales` values (4,'a104',2018,1,'78000');
insert into `sales` values (5,'a105',2018,1,'93000');

insert into `sales` values (6,'a101',2018,2,'23500');
insert into `sales` values (7,'a102',2018,2,'126000');
insert into `sales` values (8,'a103',2018,2,'18500');
insert into `sales` values (9,'a105',2018,2,'19000');
insert into `sales` values (10,'a106',2018,2,'53000');

insert into `sales` values (11,'a101',2019,1,'24000');
insert into `sales` values (12,'a102',2019,1,'109000');
insert into `sales` values (13,'a103',2019,1,'201000');
insert into `sales` values (14,'a104',2019,1,'63000');
insert into `sales` values (15,'a107',2019,1,'74000');

insert into `sales` values (16,'a102',2019,2,'160000');
insert into `sales` values (17,'a103',2019,2,'101000');
insert into `sales` values (18,'a104',2019,2,'43000');
insert into `sales` values (19,'a105',2019,2,'24000');
insert into `sales` values (20,'a106',2019,2,'1090000');

insert into `sales` values (21,'a102',2020,1,'201000');
insert into `sales` values (22,'a104',2020,1,'63000');
insert into `sales` values (23,'a105',2020,1,'74000');
insert into `sales` values (24,'a106',2020,1,'122000');
insert into `sales` values (25,'a107',2020,1,'111000');

insert into `sales` values (26,'a102',2020,2,'120000');
insert into `sales` values (27,'a103',2020,2,'93000');
insert into `sales` values (28,'a104',2020,2,'84000');
insert into `sales` values (29,'a105',2020,2,'180000');
insert into `sales` values (30,'a108',2020,2,'76000');

#실습4-3
select * from `member` where `name`='김유신';
select * from `member` where `pos`='차장' and dep=101;
select * from `member` where `pos`='차장' or dep=101;
select * from `member` where `name`!='김춘추';
select * from `member` where `name` <> '김춘추';
select * from `member` where `pos` in('사원','대리');
select * from `member` where `dep` in(101,102,103);
select * from `member` where `name` like '김%';
select * from `member` where `name` like '%신';
select * from `member` where `name` like '김__';

#실습4-4
select * from `sales` order by `sale` asc;
select * from `sales` order by `sale` desc;
select * from `member` order by `name`;
select * from `member` order by `name` desc;
select * from `member` order by `rdate`;
select  * from `sales` where `sale` > 50000 order by `sale` desc;
select * from `sales` where `sale` > 50000 order by `year`, `month`,`sale` desc;

#실습4-5
select * from `sales`;
select * from  `sales` limit 3;
select * from `sales` limit 0,3;
select * from `sales` limit 1,2;
select * from `sales` limit 5,3;
select * from `sales` order by `sale` desc limit 3,5;
select * from `sales` where `sale` < 50000 order by `sale` desc limit 3;
select * from `sales` 
where `sale` > 50000
order by `year` DESC, `month`,`sale` DESC
limit 5;

#실습4-6
select sum(`sale`) as `합계` from `sales`;
select avg(`sale`) as `평균` from `sales`;
select max(`sale`) as `최대값` from `sales`;
select min(`sale`) as `최소값` from `sales`;
select count(`sale`) as `갯수` from `sales`;
select count(*) as `갯수` from `sales`;
select substring(`hp`, 10, 4) from `member`;
insert into `member` values ('b101','을지문덕','010-5555-1234','사장',107,now());
select * from `member`;

#실습4-7 2018년 1월 매출의 총합 구하시오.
select sum(`sale`) as `2018년 1월 매출의 총합` from`sales` where `year` = 2018 and `month` = 1 ;

#실습4-8 2019년 2월에 5만원 이상 매출에 대한 총합과 평균을 구하시오.
select sum(`sale`) as `2019년 매출의 총합` from `sales` where `sale` >= 50000 and `year` = 2019 and `month` = 2; 

#실습4-9 2020년 전체 매출 가운데 최저, 최고 매출을 구하시오.
select max(`sale`) as `최대` , min(`sale`) as `최소`  from `sales` where `year` = 2020;

#실습4-10
select * from `sales` group by `uid`;
select * from `sales` group by `year`;
select * from `sales` group by `uid`, `year`;
select count(`seq`) as `건수` from `sales` group by `uid`;
select `uid`, sum(`sale`) as `합계` from `sales` group by `uid`;
select `uid`, avg(`sale`) as `평균` from `sales` group by `uid`;

select `uid`,`year`, sum(`sale`) as `합계` 
from `sales` 
where `sale` >= 50000 
group by `uid`,`year` 
order by `합계` desc ;

#실습4-11 그룹화 이전에는 where 이후에는 Having 으로 해야함
select `uid`, sum(`sale`) as `합계` from `sales`
group by `uid`
having `합계` >= 200000;

select `uid`,`year`, sum(`sale`) as `합계` 
from `sales` 
where `sale` >= 100000
group by `uid`,`year`
having `합계` >= 200000
order by `합계` desc;

#실습4-12
create table `sales2` like `sales`;
insert into `sales2` select * from `sales`;
update `sales2` set `year` = `year` + 3;

select * from `sales` union select * from `sales2`;
select `uid`,`year`,`sale` from sales union select `uid`,`year`,`sale` from `sales2`;

select `uid`,`year`, sum(`sale`) as `합계` from `sales` 
group by `uid`,`year` 
union 
select `uid`,`year`, sum(`sale`) as `합계` from `sales2` group by `uid`,`year` 
order by `year` ASC, `합계` DESC;

#실습4-13
select * from `member`;
select * from `sales` inner join `member` on sales.uid = member.uid;
select * from `member` inner join `department` on member.dep = department.depNo;

select * from `sales` as a 
join `member` as b
on a.uid = b.uid ;

select 
		`seq`,a.`uid`, `sale`,`name`,`pos`
from `sales` as a
join `member` as b
on a.uid = b.uid;

select 
		`seq`,a.`uid`, `sale`,`name`,`pos`
from `sales` as a
join `member` as b
using(`uid`);

select * from `sales` as a
join `member` as b on a.uid = b.uid 
join `department` as c on b.dep = c.depNo;

#실습4-14
select * from `sales` as a
left join `member` as b
on a.uid = b.uid;

select * from `sales` as a
right join `member` as b
on a.uid = b.uid;

#실습4-15 모든 직원의 아이디, 이름, 직급, 부서명을 조회하시오.
select 
	a.`uid`,
	a.`name`,
	`pos`,
	b.`name` 
from `member` as a
join `department` as b
on a.dep = b.depNo;

#실습4-16 `김유신` 직원의 2019년도 매출의 합을 조회하시오.
select sum(`sale`) as `2019 김유신 매출 합`
from `sales` as a
join `member` as b 
on a.uid = b.uid
where `name` = '김유신' and `year` = 2019;

#실습4-17
select 
	b.`name`,
    c.`name`,
    b.`pos`,
    a.`year`,
sum(`sale`) as `매출합` 
from `sales` as a
join `member` as b on a.uid = b.uid
join `department` as c on b.dep = c.depNo
where `year`=2019 and `sale` >= 50000 
group by a.uid
having `매출합` >= 100000
order by `매출합` desc;

