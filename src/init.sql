create database blog_18308045;
use blog_18308045;
create table Article
(
    ATime datetime,
	Title varchar(10),
	Author varchar(10),
	primary key(ATime)
);
create table Tag
(
	TName varchar(10),
    ATime datetime,
	foreign key(ATime) references Article(ATime),
	primary key(TName, ATime)
);
create table Text
(
	ATime datetime,
	AContent longtext,
	foreign key(ATime) references Article(ATime),
	primary key(ATime)
);
create table Comment
(
	CTime datetime,
	ATime datetime,
	CNickname varchar(10),
	CEmail varchar(10),
	CContent text,
    foreign key(ATime) references Article(ATime),
	primary key(CID)
);
create table Subcomment
(
	STime datetime,
	CTime datetime,
    Target datetime,
	SNickname varchar(10),
	SEmail varchar(10),
	SContent text,
    foreign key(CTime) references Article(CTime),
    primary key(STime, CTime)
);
create table File
(
	FName varchar(10),
	primary key(FName)
);
create user 'blogger_18308013'@'%' identified by '18340197';
grant all privileges on blog_18308045.* to blogger_18308013@'%' identified by '18340197';
flush  privileges;
