create database blog_18308045;
use blog_18308045;
create table Article
(
	AID int,
	Title varchar(10),
	Author varchar(10),
	ATime datetime,
	primary key(AID)
);
create table Tag
(
	AID int,
	TName varchar(10),
	foreign key(AID) references Article(AID),
	primary key(AID)
);
create table Text
(
	AID int,
	AContent longtext,
	foreign key(AID) references Article(AID),
	primary key(AID)
);
create table Comment
(
	CID int,
	Nickname varchar(10),
	Email varchar(10),
	CTime datetime,
	CContent text,
	primary key(CID)
);
create table File
(
	FName varchar(10),
	primary key(FName)
);
create table Article_Comment
(
	AID int,
	CID int,
	foreign key(AID) references Article(AID),
	foreign key(CID) references Comment(CID),
	primary key(AID, CID)
);
create table Comment_Comment
(
	C1ID int,
	C2ID int,
	foreign key(C1ID) references Comment(CID),
	foreign key(C2ID) references Comment(CID),
	primary key(C1ID, C2ID)
);
create user 'blogger_18308013'@'%' identified by '18340197';
grant all privileges on blog_18308045.* to blogger_18308013@'%' identified by '18340197';
flush  privileges;
