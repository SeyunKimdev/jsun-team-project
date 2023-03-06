use rewrite;

create table tbl_member(
	member_id int unsigned auto_increment primary key,
	member_identification varchar(500) unique not null,
	member_password varchar(500) not null,
	member_nickname varchar(500) unique not null,
	member_name varchar(500) not null,
	member_phone varchar(500) unique not null,
	member_email varchar(500) not null,
	member_birth date not null,
	member_gender char(1) not null,
	member_status char(1) default 'y'
);
