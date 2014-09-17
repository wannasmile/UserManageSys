create database user_manage_sys;
use user_manage_sys;

create table user_info
(	
	user_no varchar(10) not null unique,
	user_nick varchar(20) not null unique,
	user_name varchar(20) not null,
	user_password varchar(20) not null,
	user_sex char(2) not null,
	user_department varchar(20) not null,
	user_class varchar(20) not null,
	user_phone varchar(20) default null,
	user_email varchar(20) default null,		
	user_address varchar(50) default null,
	create_date date default null,	
	constraint PK_USERNO primary key(user_no),
	constraint CK_USERSEX check (user_sex='男' or user_sex ='女')
);

create table admin_info
(	admin_no  varchar(5) default null unique,
	admin_name varchar(20) not null unique,
	admin_password varchar(20) not null,
	create_date date default null,
	constraint PK_ADMINNO primary key(admin_no)
);
insert into admin_info values('a0001','admin','123456','2013/01/01');

